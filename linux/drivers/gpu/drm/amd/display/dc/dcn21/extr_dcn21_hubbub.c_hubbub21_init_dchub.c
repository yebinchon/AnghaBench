
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hubbub {int dummy; } ;
struct TYPE_2__ {int agp_base; int agp_top; int agp_bot; int fb_offset; int fb_top; int fb_base; } ;
struct dcn_hubbub_phys_addr_config {TYPE_1__ system_aperture; } ;
struct dcn20_hubbub {int dummy; } ;


 int AGP_BASE ;
 int AGP_BOT ;
 int AGP_TOP ;
 int DCN_VM_AGP_BASE ;
 int DCN_VM_AGP_BOT ;
 int DCN_VM_AGP_TOP ;
 int DCN_VM_FB_LOCATION_BASE ;
 int DCN_VM_FB_LOCATION_TOP ;
 int DCN_VM_FB_OFFSET ;
 int FB_BASE ;
 int FB_OFFSET ;
 int FB_TOP ;
 int NUM_VMID ;
 int REG_SET (int ,int ,int ,int ) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int dcn21_dchvm_init (struct hubbub*) ;

__attribute__((used)) static int hubbub21_init_dchub(struct hubbub *hubbub,
  struct dcn_hubbub_phys_addr_config *pa_config)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);

 REG_SET(DCN_VM_FB_LOCATION_BASE, 0,
  FB_BASE, pa_config->system_aperture.fb_base);
 REG_SET(DCN_VM_FB_LOCATION_TOP, 0,
   FB_TOP, pa_config->system_aperture.fb_top);
 REG_SET(DCN_VM_FB_OFFSET, 0,
   FB_OFFSET, pa_config->system_aperture.fb_offset);
 REG_SET(DCN_VM_AGP_BOT, 0,
   AGP_BOT, pa_config->system_aperture.agp_bot);
 REG_SET(DCN_VM_AGP_TOP, 0,
   AGP_TOP, pa_config->system_aperture.agp_top);
 REG_SET(DCN_VM_AGP_BASE, 0,
   AGP_BASE, pa_config->system_aperture.agp_base);

 dcn21_dchvm_init(hubbub);

 return NUM_VMID;
}
