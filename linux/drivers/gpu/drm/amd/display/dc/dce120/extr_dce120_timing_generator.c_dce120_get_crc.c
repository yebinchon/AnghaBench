
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;


 int CRC0_B_CB ;
 int CRC0_G_Y ;
 int CRC0_R_CR ;
 int CRTC0_CRTC_CRC0_DATA_B ;
 int CRTC0_CRTC_CRC0_DATA_RG ;
 int CRTC0_CRTC_CRC_CNTL ;
 int CRTC_CRC_EN ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTC0_CRTC_CRC0_DATA_B ;
 int mmCRTC0_CRTC_CRC0_DATA_RG ;
 int mmCRTC0_CRTC_CRC_CNTL ;

__attribute__((used)) static bool dce120_get_crc(struct timing_generator *tg, uint32_t *r_cr,
      uint32_t *g_y, uint32_t *b_cb)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value, field;

 value = dm_read_reg_soc15(tg->ctx, mmCRTC0_CRTC_CRC_CNTL,
      tg110->offsets.crtc);
 field = get_reg_field_value(value, CRTC0_CRTC_CRC_CNTL, CRTC_CRC_EN);


 if (!field)
  return 0;

 value = dm_read_reg_soc15(tg->ctx, mmCRTC0_CRTC_CRC0_DATA_RG,
      tg110->offsets.crtc);
 *r_cr = get_reg_field_value(value, CRTC0_CRTC_CRC0_DATA_RG, CRC0_R_CR);
 *g_y = get_reg_field_value(value, CRTC0_CRTC_CRC0_DATA_RG, CRC0_G_Y);

 value = dm_read_reg_soc15(tg->ctx, mmCRTC0_CRTC_CRC0_DATA_B,
      tg110->offsets.crtc);
 *b_cb = get_reg_field_value(value, CRTC0_CRTC_CRC0_DATA_B, CRC0_B_CB);

 return 1;
}
