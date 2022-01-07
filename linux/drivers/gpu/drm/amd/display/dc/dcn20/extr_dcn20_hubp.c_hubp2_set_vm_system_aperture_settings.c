
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int quad_part; } ;
struct TYPE_6__ {int quad_part; } ;
struct TYPE_5__ {int quad_part; } ;
struct vm_system_aperture_param {TYPE_3__ sys_high; TYPE_2__ sys_low; TYPE_1__ sys_default; } ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
struct TYPE_8__ {int quad_part; int low_part; int high_part; } ;
typedef TYPE_4__ PHYSICAL_ADDRESS_LOC ;


 int DCN_VM_MX_L1_TLB_CNTL ;
 int DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ;
 int DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ;
 int DCN_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM ;
 int DCN_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int DCN_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int ENABLE_L1_TLB ;
 int MC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int MC_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 int SYSTEM_ACCESS_MODE ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_set_vm_system_aperture_settings(struct hubp *hubp,
  struct vm_system_aperture_param *apt)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 PHYSICAL_ADDRESS_LOC mc_vm_apt_default;
 PHYSICAL_ADDRESS_LOC mc_vm_apt_low;
 PHYSICAL_ADDRESS_LOC mc_vm_apt_high;


 mc_vm_apt_default.quad_part = apt->sys_default.quad_part >> 12;


 mc_vm_apt_low.quad_part = apt->sys_low.quad_part >> 18;
 mc_vm_apt_high.quad_part = apt->sys_high.quad_part >> 18;

 REG_UPDATE_2(DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
  DCN_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM, 1,
  DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, mc_vm_apt_default.high_part);

 REG_SET(DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, 0,
   DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, mc_vm_apt_default.low_part);

 REG_SET(DCN_VM_SYSTEM_APERTURE_LOW_ADDR, 0,
   MC_VM_SYSTEM_APERTURE_LOW_ADDR, mc_vm_apt_low.quad_part);

 REG_SET(DCN_VM_SYSTEM_APERTURE_HIGH_ADDR, 0,
   MC_VM_SYSTEM_APERTURE_HIGH_ADDR, mc_vm_apt_high.quad_part);

 REG_SET_2(DCN_VM_MX_L1_TLB_CNTL, 0,
   ENABLE_L1_TLB, 1,
   SYSTEM_ACCESS_MODE, 0x3);
}
