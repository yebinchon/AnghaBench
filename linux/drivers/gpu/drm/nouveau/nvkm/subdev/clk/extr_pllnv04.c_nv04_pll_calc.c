
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int max_freq; } ;
struct nvbios_pll {TYPE_1__ vco2; } ;


 int getMNP_double (struct nvkm_subdev*,struct nvbios_pll*,int ,int*,int*,int*,int*,int*) ;
 int getMNP_single (struct nvkm_subdev*,struct nvbios_pll*,int ,int*,int*,int*) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;

int
nv04_pll_calc(struct nvkm_subdev *subdev, struct nvbios_pll *info, u32 freq,
       int *N1, int *M1, int *N2, int *M2, int *P)
{
 int ret;

 if (!info->vco2.max_freq || !N2) {
  ret = getMNP_single(subdev, info, freq, N1, M1, P);
  if (N2) {
   *N2 = 1;
   *M2 = 1;
  }
 } else {
  ret = getMNP_double(subdev, info, freq, N1, M1, N2, M2, P);
 }

 if (!ret)
  nvkm_error(subdev, "unable to compute acceptable pll values\n");
 return ret;
}
