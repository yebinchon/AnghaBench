
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ef; int bw; int nr; } ;
struct nvkm_ior {TYPE_1__ dp; } ;
struct nvkm_i2c_aux {int dummy; } ;


 int nvkm_i2c_aux_lnk_ctl (struct nvkm_i2c_aux*,int ,int ,int ) ;

__attribute__((used)) static int
nv50_pior_dp_links(struct nvkm_ior *pior, struct nvkm_i2c_aux *aux)
{
 int ret = nvkm_i2c_aux_lnk_ctl(aux, pior->dp.nr, pior->dp.bw,
         pior->dp.ef);
 if (ret)
  return ret;
 return 1;
}
