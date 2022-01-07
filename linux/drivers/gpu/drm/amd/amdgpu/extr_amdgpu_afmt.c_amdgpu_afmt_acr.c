
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef size_t u8 ;
struct amdgpu_afmt_acr {scalar_t__ clock; int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } ;


 size_t ARRAY_SIZE (struct amdgpu_afmt_acr*) ;
 int amdgpu_afmt_calc_cts (scalar_t__,int *,int *,int) ;
 struct amdgpu_afmt_acr* amdgpu_afmt_predefined_acr ;

struct amdgpu_afmt_acr amdgpu_afmt_acr(uint32_t clock)
{
 struct amdgpu_afmt_acr res;
 u8 i;


 for (i = 0; i < ARRAY_SIZE(amdgpu_afmt_predefined_acr); i++) {
  if (amdgpu_afmt_predefined_acr[i].clock == clock)
   return amdgpu_afmt_predefined_acr[i];
 }


 amdgpu_afmt_calc_cts(clock, &res.cts_32khz, &res.n_32khz, 32000);
 amdgpu_afmt_calc_cts(clock, &res.cts_44_1khz, &res.n_44_1khz, 44100);
 amdgpu_afmt_calc_cts(clock, &res.cts_48khz, &res.n_48khz, 48000);

 return res;
}
