
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ni_leakage_coeffients {int bv; int av; int bt; int at; } ;
typedef int s64 ;
typedef int s32 ;


 int div64_s64 (int ,int) ;
 int drm_fixp2int (int) ;
 int drm_fixp_exp (int) ;
 int drm_fixp_mul (int,int) ;
 int drm_int2fixp (int ) ;

__attribute__((used)) static void ni_calculate_leakage_for_v_and_t_formula(const struct ni_leakage_coeffients *coeff,
           u16 v, s32 t,
           u32 ileakage,
           u32 *leakage)
{
 s64 kt, kv, leakage_w, i_leakage, vddc, temperature;

 i_leakage = div64_s64(drm_int2fixp(ileakage), 1000);
 vddc = div64_s64(drm_int2fixp(v), 1000);
 temperature = div64_s64(drm_int2fixp(t), 1000);

 kt = drm_fixp_mul(div64_s64(drm_int2fixp(coeff->at), 1000),
     drm_fixp_exp(drm_fixp_mul(div64_s64(drm_int2fixp(coeff->bt), 1000), temperature)));
 kv = drm_fixp_mul(div64_s64(drm_int2fixp(coeff->av), 1000),
     drm_fixp_exp(drm_fixp_mul(div64_s64(drm_int2fixp(coeff->bv), 1000), vddc)));

 leakage_w = drm_fixp_mul(drm_fixp_mul(drm_fixp_mul(i_leakage, kt), kv), vddc);

 *leakage = drm_fixp2int(leakage_w * 1000);
}
