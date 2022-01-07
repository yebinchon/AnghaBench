
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int cgs_read_ind_register (int ,int ,scalar_t__) ;
 scalar_t__ ixSMU_EFUSE_0 ;

__attribute__((used)) static bool polaris10_is_hw_avfs_present(struct pp_hwmgr *hwmgr)
{
 uint32_t efuse;

 efuse = cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixSMU_EFUSE_0 + (49*4));
 efuse &= 0x00000001;
 if (efuse)
  return 1;

 return 0;
}
