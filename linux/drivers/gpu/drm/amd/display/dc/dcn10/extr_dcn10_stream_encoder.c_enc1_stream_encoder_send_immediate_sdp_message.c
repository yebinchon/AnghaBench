
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 int AFMT_AUDIO_CLOCK_EN ;
 int AFMT_CNTL ;
 int AFMT_GENERIC4_IMMEDIATE_UPDATE ;
 int AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING ;
 int AFMT_GENERIC_0 ;
 int AFMT_GENERIC_1 ;
 int AFMT_GENERIC_2 ;
 int AFMT_GENERIC_3 ;
 int AFMT_GENERIC_4 ;
 int AFMT_GENERIC_5 ;
 int AFMT_GENERIC_6 ;
 int AFMT_GENERIC_7 ;
 int AFMT_GENERIC_CONFLICT ;
 int AFMT_GENERIC_CONFLICT_CLR ;
 int AFMT_GENERIC_HB0 ;
 int AFMT_GENERIC_HB1 ;
 int AFMT_GENERIC_HB2 ;
 int AFMT_GENERIC_HB3 ;
 int AFMT_GENERIC_HDR ;
 int AFMT_GENERIC_INDEX ;
 int AFMT_VBI_PACKET_CONTROL ;
 int AFMT_VBI_PACKET_CONTROL1 ;
 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_CNTL ;
 int DP_SEC_CNTL2 ;
 int DP_SEC_GSP4_SEND ;
 int DP_SEC_GSP4_SEND_ANY_LINE ;
 int DP_SEC_GSP4_SEND_PENDING ;
 int DP_SEC_STREAM_ENABLE ;
 int REG_READ (int ) ;
 int REG_SET_4 (int ,int ,int ,int const,int ,int const,int ,int const,int ,int const) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int const) ;

void enc1_stream_encoder_send_immediate_sdp_message(
 struct stream_encoder *enc,
 const uint8_t *custom_sdp_message,
 unsigned int sdp_message_size)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 uint32_t value = 0;




 uint32_t max_retries = 50;


 REG_WAIT(DP_SEC_CNTL2, DP_SEC_GSP4_SEND_PENDING,
  0, 10, max_retries);


 REG_UPDATE(DP_SEC_CNTL2, DP_SEC_GSP4_SEND, 0);


 REG_UPDATE(DP_SEC_CNTL2, DP_SEC_GSP4_SEND_ANY_LINE, 1);


 REG_UPDATE(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, 1);


 REG_WAIT(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT,
   0, 10, max_retries);





 REG_UPDATE(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT_CLR, 1);


 REG_UPDATE(AFMT_VBI_PACKET_CONTROL,
   AFMT_GENERIC_INDEX, 4);




 REG_SET_4(AFMT_GENERIC_HDR, 0,
   AFMT_GENERIC_HB0, custom_sdp_message[0],
   AFMT_GENERIC_HB1, custom_sdp_message[1],
   AFMT_GENERIC_HB2, custom_sdp_message[2],
   AFMT_GENERIC_HB3, custom_sdp_message[3]);





 {
  const uint32_t *content =
   (const uint32_t *) &custom_sdp_message[4];

  REG_WRITE(AFMT_GENERIC_0, *content++);
  REG_WRITE(AFMT_GENERIC_1, *content++);
  REG_WRITE(AFMT_GENERIC_2, *content++);
  REG_WRITE(AFMT_GENERIC_3, *content++);
  REG_WRITE(AFMT_GENERIC_4, *content++);
  REG_WRITE(AFMT_GENERIC_5, *content++);
  REG_WRITE(AFMT_GENERIC_6, *content++);
  REG_WRITE(AFMT_GENERIC_7, *content);
 }




 REG_WAIT(AFMT_VBI_PACKET_CONTROL1, AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING,
   0, 10, max_retries);




 REG_UPDATE(AFMT_VBI_PACKET_CONTROL1,
   AFMT_GENERIC4_IMMEDIATE_UPDATE, 1);


 REG_UPDATE(DP_SEC_CNTL2, DP_SEC_GSP4_SEND, 1);
 value = REG_READ(DP_SEC_CNTL);
 if (value)
  REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}
