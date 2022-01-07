
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ni_leakage_coeffients {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef int s32 ;


 int si_calculate_leakage_for_v_and_t_formula (struct ni_leakage_coeffients const*,int ,int ,int ,int *) ;

__attribute__((used)) static void si_calculate_leakage_for_v_and_t(struct amdgpu_device *adev,
          const struct ni_leakage_coeffients *coeff,
          u16 v,
          s32 t,
          u32 i_leakage,
          u32 *leakage)
{
 si_calculate_leakage_for_v_and_t_formula(coeff, v, t, i_leakage, leakage);
}
