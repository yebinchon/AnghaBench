
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce110_stream_encoder {int dummy; } ;
struct dc_info_packet {int * sb; int hb3; int hb2; int hb1; int hb0; } ;


 int AFMT_AUDIO_CLOCK_EN ;
 int AFMT_CNTL ;
 int AFMT_GENERIC0_FRAME_UPDATE ;
 int AFMT_GENERIC0_UPDATE ;
 int AFMT_GENERIC1_FRAME_UPDATE ;
 int AFMT_GENERIC2_FRAME_UPDATE ;
 int AFMT_GENERIC2_UPDATE ;
 int AFMT_GENERIC3_FRAME_UPDATE ;
 int AFMT_GENERIC4_FRAME_UPDATE ;
 int AFMT_GENERIC5_FRAME_UPDATE ;
 int AFMT_GENERIC6_FRAME_UPDATE ;
 int AFMT_GENERIC7_FRAME_UPDATE ;
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
 int ASSERT (int ) ;
 scalar_t__ REG (int ) ;
 int REG_READ (int ) ;
 int REG_SET_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int const) ;

__attribute__((used)) static void dce110_update_generic_info_packet(
 struct dce110_stream_encoder *enc110,
 uint32_t packet_index,
 const struct dc_info_packet *info_packet)
{
 uint32_t regval;



 uint32_t max_retries = 50;


 if (REG(AFMT_CNTL))
  REG_UPDATE(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, 1);

 if (REG(AFMT_VBI_PACKET_CONTROL1)) {
  if (packet_index >= 8)
   ASSERT(0);
  REG_WAIT(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT,
    0, 10, max_retries);





  REG_UPDATE(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT_CLR, 1);
 }

 {
  regval = REG_READ(AFMT_VBI_PACKET_CONTROL);
  REG_UPDATE(AFMT_VBI_PACKET_CONTROL,
    AFMT_GENERIC_INDEX, packet_index);
 }



 {
  REG_SET_4(AFMT_GENERIC_HDR, 0,
    AFMT_GENERIC_HB0, info_packet->hb0,
    AFMT_GENERIC_HB1, info_packet->hb1,
    AFMT_GENERIC_HB2, info_packet->hb2,
    AFMT_GENERIC_HB3, info_packet->hb3);
 }




 {
  const uint32_t *content =
   (const uint32_t *) &info_packet->sb[0];

  REG_WRITE(AFMT_GENERIC_0, *content++);
  REG_WRITE(AFMT_GENERIC_1, *content++);
  REG_WRITE(AFMT_GENERIC_2, *content++);
  REG_WRITE(AFMT_GENERIC_3, *content++);
  REG_WRITE(AFMT_GENERIC_4, *content++);
  REG_WRITE(AFMT_GENERIC_5, *content++);
  REG_WRITE(AFMT_GENERIC_6, *content++);
  REG_WRITE(AFMT_GENERIC_7, *content);
 }

 if (!REG(AFMT_VBI_PACKET_CONTROL1)) {

  REG_UPDATE_2(AFMT_VBI_PACKET_CONTROL,
   AFMT_GENERIC0_UPDATE, (packet_index == 0),
   AFMT_GENERIC2_UPDATE, (packet_index == 2));
 }
}
