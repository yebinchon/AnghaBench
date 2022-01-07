
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ta_ras_block { ____Placeholder_ta_ras_block } ta_ras_block ;
typedef enum amdgpu_ras_block { ____Placeholder_amdgpu_ras_block } amdgpu_ras_block ;
 int TA_RAS_BLOCK__ATHUB ;
 int TA_RAS_BLOCK__DF ;
 int TA_RAS_BLOCK__FUSE ;
 int TA_RAS_BLOCK__GFX ;
 int TA_RAS_BLOCK__HDP ;
 int TA_RAS_BLOCK__MMHUB ;
 int TA_RAS_BLOCK__MP0 ;
 int TA_RAS_BLOCK__MP1 ;
 int TA_RAS_BLOCK__PCIE_BIF ;
 int TA_RAS_BLOCK__SDMA ;
 int TA_RAS_BLOCK__SEM ;
 int TA_RAS_BLOCK__SMN ;
 int TA_RAS_BLOCK__UMC ;
 int TA_RAS_BLOCK__XGMI_WAFL ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static inline enum ta_ras_block
amdgpu_ras_block_to_ta(enum amdgpu_ras_block block) {
 switch (block) {
 case 129:
  return TA_RAS_BLOCK__UMC;
 case 132:
  return TA_RAS_BLOCK__SDMA;
 case 138:
  return TA_RAS_BLOCK__GFX;
 case 136:
  return TA_RAS_BLOCK__MMHUB;
 case 141:
  return TA_RAS_BLOCK__ATHUB;
 case 133:
  return TA_RAS_BLOCK__PCIE_BIF;
 case 137:
  return TA_RAS_BLOCK__HDP;
 case 128:
  return TA_RAS_BLOCK__XGMI_WAFL;
 case 140:
  return TA_RAS_BLOCK__DF;
 case 130:
  return TA_RAS_BLOCK__SMN;
 case 131:
  return TA_RAS_BLOCK__SEM;
 case 135:
  return TA_RAS_BLOCK__MP0;
 case 134:
  return TA_RAS_BLOCK__MP1;
 case 139:
  return TA_RAS_BLOCK__FUSE;
 default:
  WARN_ONCE(1, "RAS ERROR: unexpected block id %d\n", block);
  return TA_RAS_BLOCK__UMC;
 }
}
