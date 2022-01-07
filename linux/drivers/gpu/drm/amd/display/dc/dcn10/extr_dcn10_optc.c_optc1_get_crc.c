
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 int CRC0_B_CB ;
 int CRC0_G_Y ;
 int CRC0_R_CR ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_CRC0_DATA_B ;
 int OTG_CRC0_DATA_RG ;
 int OTG_CRC_CNTL ;
 int OTG_CRC_EN ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_GET_2 (int ,int ,scalar_t__*,int ,scalar_t__*) ;

bool optc1_get_crc(struct timing_generator *optc,
      uint32_t *r_cr, uint32_t *g_y, uint32_t *b_cb)
{
 uint32_t field = 0;
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_GET(OTG_CRC_CNTL, OTG_CRC_EN, &field);


 if (!field)
  return 0;

 REG_GET_2(OTG_CRC0_DATA_RG,
   CRC0_R_CR, r_cr,
   CRC0_G_Y, g_y);

 REG_GET(OTG_CRC0_DATA_B,
   CRC0_B_CB, b_cb);

 return 1;
}
