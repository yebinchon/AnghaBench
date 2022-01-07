
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int DF ;
 int DF_CS_AON0_CoherentSlaveModeCtrlA0 ;
 int ForceParWrRMW ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void df_v1_7_enable_ecc_force_par_wr_rmw(struct amdgpu_device *adev,
      bool enable)
{
 WREG32_FIELD15(DF, 0, DF_CS_AON0_CoherentSlaveModeCtrlA0,
         ForceParWrRMW, enable);
}
