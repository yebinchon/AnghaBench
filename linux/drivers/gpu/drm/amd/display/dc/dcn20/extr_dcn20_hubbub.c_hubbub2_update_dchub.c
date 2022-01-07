
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;
struct dchub_init_data {int fb_mode; int zfb_phys_addr_base; int zfb_mc_base_addr; int zfb_size_in_byte; int dchub_initialzied; int dchub_info_valid; } ;


 int AGP_BASE ;
 int AGP_BOT ;
 int AGP_TOP ;
 int DCN_VM_AGP_BASE ;
 int DCN_VM_AGP_BOT ;
 int DCN_VM_AGP_TOP ;
 int DCN_VM_FB_LOCATION_BASE ;
 int DCN_VM_FB_LOCATION_TOP ;
 int FB_BASE ;
 int FB_TOP ;



 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;

void hubbub2_update_dchub(struct hubbub *hubbub,
  struct dchub_init_data *dh_data)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);

 if (REG(DCN_VM_FB_LOCATION_TOP) == 0)
  return;

 switch (dh_data->fb_mode) {
 case 128:

  REG_UPDATE(DCN_VM_FB_LOCATION_TOP,
    FB_TOP, 0);

  REG_UPDATE(DCN_VM_FB_LOCATION_BASE,
    FB_BASE, 0xFFFFFF);


  REG_UPDATE(DCN_VM_AGP_BASE,
    AGP_BASE, dh_data->zfb_phys_addr_base >> 24);



  REG_UPDATE(DCN_VM_AGP_BOT,
    AGP_BOT, dh_data->zfb_mc_base_addr >> 24);



  REG_UPDATE(DCN_VM_AGP_TOP,
    AGP_TOP, (dh_data->zfb_mc_base_addr +
      dh_data->zfb_size_in_byte - 1) >> 24);
  break;
 case 129:



  REG_UPDATE(DCN_VM_AGP_BASE,
    AGP_BASE, dh_data->zfb_phys_addr_base >> 24);



  REG_UPDATE(DCN_VM_AGP_BOT,
    AGP_BOT, dh_data->zfb_mc_base_addr >> 24);



  REG_UPDATE(DCN_VM_AGP_TOP,
    AGP_TOP, (dh_data->zfb_mc_base_addr +
      dh_data->zfb_size_in_byte - 1) >> 24);
  break;
 case 130:



  REG_UPDATE(DCN_VM_AGP_BASE,
    AGP_BASE, 0);



  REG_UPDATE(DCN_VM_AGP_BOT,
    AGP_BOT, 0xFFFFFF);



  REG_UPDATE(DCN_VM_AGP_TOP,
    AGP_TOP, 0);
  break;
 default:
  break;
 }

 dh_data->dchub_initialzied = 1;
 dh_data->dchub_info_valid = 0;
}
