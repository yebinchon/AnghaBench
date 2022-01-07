
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;
struct dchub_init_data {int fb_mode; int zfb_phys_addr_base; int zfb_mc_base_addr; int zfb_size_in_byte; int dchub_initialzied; int dchub_info_valid; } ;


 int ASSERT (int) ;
 int DCHUBBUB_SDPIF_AGP_BASE ;
 int DCHUBBUB_SDPIF_AGP_BOT ;
 int DCHUBBUB_SDPIF_AGP_TOP ;
 int DCHUBBUB_SDPIF_FB_BASE ;
 int DCHUBBUB_SDPIF_FB_TOP ;



 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int SDPIF_AGP_BASE ;
 int SDPIF_AGP_BOT ;
 int SDPIF_AGP_TOP ;
 int SDPIF_FB_BASE ;
 int SDPIF_FB_TOP ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;

void hubbub1_update_dchub(
 struct hubbub *hubbub,
 struct dchub_init_data *dh_data)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);

 if (REG(DCHUBBUB_SDPIF_FB_TOP) == 0) {
  ASSERT(0);

  return;
 }

 switch (dh_data->fb_mode) {
 case 128:

  REG_UPDATE(DCHUBBUB_SDPIF_FB_TOP,
    SDPIF_FB_TOP, 0);

  REG_UPDATE(DCHUBBUB_SDPIF_FB_BASE,
    SDPIF_FB_BASE, 0x0FFFF);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BASE,
    SDPIF_AGP_BASE, dh_data->zfb_phys_addr_base >> 22);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BOT,
    SDPIF_AGP_BOT, dh_data->zfb_mc_base_addr >> 22);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_TOP,
    SDPIF_AGP_TOP, (dh_data->zfb_mc_base_addr +
      dh_data->zfb_size_in_byte - 1) >> 22);
  break;
 case 129:


  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BASE,
    SDPIF_AGP_BASE, dh_data->zfb_phys_addr_base >> 22);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BOT,
    SDPIF_AGP_BOT, dh_data->zfb_mc_base_addr >> 22);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_TOP,
    SDPIF_AGP_TOP, (dh_data->zfb_mc_base_addr +
      dh_data->zfb_size_in_byte - 1) >> 22);
  break;
 case 130:

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BASE,
    SDPIF_AGP_BASE, 0);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_BOT,
    SDPIF_AGP_BOT, 0X03FFFF);

  REG_UPDATE(DCHUBBUB_SDPIF_AGP_TOP,
    SDPIF_AGP_TOP, 0);
  break;
 default:
  break;
 }

 dh_data->dchub_initialzied = 1;
 dh_data->dchub_info_valid = 0;
}
