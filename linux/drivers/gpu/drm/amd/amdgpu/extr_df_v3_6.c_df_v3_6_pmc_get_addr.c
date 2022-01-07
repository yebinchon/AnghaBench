
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int df_v3_6_pmc_config_2_cntr (struct amdgpu_device*,int ) ;
 int smnPerfMonCtlHi0 ;
 int smnPerfMonCtlHi1 ;
 int smnPerfMonCtlHi2 ;
 int smnPerfMonCtlHi3 ;
 int smnPerfMonCtlLo0 ;
 int smnPerfMonCtlLo1 ;
 int smnPerfMonCtlLo2 ;
 int smnPerfMonCtlLo3 ;
 int smnPerfMonCtrHi0 ;
 int smnPerfMonCtrHi1 ;
 int smnPerfMonCtrHi2 ;
 int smnPerfMonCtrHi3 ;
 int smnPerfMonCtrLo0 ;
 int smnPerfMonCtrLo1 ;
 int smnPerfMonCtrLo2 ;
 int smnPerfMonCtrLo3 ;

__attribute__((used)) static void df_v3_6_pmc_get_addr(struct amdgpu_device *adev,
     uint64_t config,
     int is_ctrl,
     uint32_t *lo_base_addr,
     uint32_t *hi_base_addr)
{
 int target_cntr = df_v3_6_pmc_config_2_cntr(adev, config);

 if (target_cntr < 0)
  return;

 switch (target_cntr) {

 case 0:
  *lo_base_addr = is_ctrl ? smnPerfMonCtlLo0 : smnPerfMonCtrLo0;
  *hi_base_addr = is_ctrl ? smnPerfMonCtlHi0 : smnPerfMonCtrHi0;
  break;
 case 1:
  *lo_base_addr = is_ctrl ? smnPerfMonCtlLo1 : smnPerfMonCtrLo1;
  *hi_base_addr = is_ctrl ? smnPerfMonCtlHi1 : smnPerfMonCtrHi1;
  break;
 case 2:
  *lo_base_addr = is_ctrl ? smnPerfMonCtlLo2 : smnPerfMonCtrLo2;
  *hi_base_addr = is_ctrl ? smnPerfMonCtlHi2 : smnPerfMonCtrHi2;
  break;
 case 3:
  *lo_base_addr = is_ctrl ? smnPerfMonCtlLo3 : smnPerfMonCtrLo3;
  *hi_base_addr = is_ctrl ? smnPerfMonCtlHi3 : smnPerfMonCtrHi3;
  break;

 }

}
