
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dchub_init_data {int fb_mode; int zfb_phys_addr_base; int zfb_mc_base_addr; int zfb_size_in_byte; int dchub_initialzied; int dchub_info_valid; } ;
struct dce_hwseq {int dummy; } ;


 int AGP_BASE ;
 int AGP_BOT ;
 int AGP_TOP ;
 int DCHUB_AGP_BASE ;
 int DCHUB_AGP_BOT ;
 int DCHUB_AGP_TOP ;
 int DCHUB_FB_LOCATION ;
 int FB_BASE ;
 int FB_TOP ;



 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void dce120_update_dchub(
 struct dce_hwseq *hws,
 struct dchub_init_data *dh_data)
{

 switch (dh_data->fb_mode) {
 case 128:

  REG_UPDATE_2(DCHUB_FB_LOCATION,
    FB_TOP, 0,
    FB_BASE, 0x0FFFF);

  REG_UPDATE(DCHUB_AGP_BASE,
    AGP_BASE, dh_data->zfb_phys_addr_base >> 22);

  REG_UPDATE(DCHUB_AGP_BOT,
    AGP_BOT, dh_data->zfb_mc_base_addr >> 22);

  REG_UPDATE(DCHUB_AGP_TOP,
    AGP_TOP, (dh_data->zfb_mc_base_addr + dh_data->zfb_size_in_byte - 1) >> 22);
  break;
 case 129:

  REG_UPDATE(DCHUB_AGP_BASE,
    AGP_BASE, dh_data->zfb_phys_addr_base >> 22);

  REG_UPDATE(DCHUB_AGP_BOT,
    AGP_BOT, dh_data->zfb_mc_base_addr >> 22);

  REG_UPDATE(DCHUB_AGP_TOP,
    AGP_TOP, (dh_data->zfb_mc_base_addr + dh_data->zfb_size_in_byte - 1) >> 22);
  break;
 case 130:

  REG_UPDATE(DCHUB_AGP_BASE,
    AGP_BASE, 0);

  REG_UPDATE(DCHUB_AGP_BOT,
    AGP_BOT, 0x03FFFF);

  REG_UPDATE(DCHUB_AGP_TOP,
    AGP_TOP, 0);
  break;
 default:
  break;
 }

 dh_data->dchub_initialzied = 1;
 dh_data->dchub_info_valid = 0;
}
