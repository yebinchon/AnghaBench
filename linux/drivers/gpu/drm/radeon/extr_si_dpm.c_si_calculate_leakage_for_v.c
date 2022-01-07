
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;
struct ni_leakage_coeffients {int dummy; } ;


 int si_calculate_leakage_for_v_formula (struct ni_leakage_coeffients const*,int const,int ,int ,int *) ;

__attribute__((used)) static void si_calculate_leakage_for_v(struct radeon_device *rdev,
           const struct ni_leakage_coeffients *coeff,
           const u32 fixed_kt,
           u16 v,
           u32 i_leakage,
           u32 *leakage)
{
 si_calculate_leakage_for_v_formula(coeff, fixed_kt, v, i_leakage, leakage);
}
