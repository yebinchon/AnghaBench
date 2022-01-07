
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_aux {TYPE_1__* func; } ;
struct TYPE_2__ {int (* lnk_ctl ) (struct nvkm_i2c_aux*,int,int,int) ;} ;


 int ENODEV ;
 int stub1 (struct nvkm_i2c_aux*,int,int,int) ;

int
nvkm_i2c_aux_lnk_ctl(struct nvkm_i2c_aux *aux, int nr, int bw, bool ef)
{
 if (aux->func->lnk_ctl)
  return aux->func->lnk_ctl(aux, nr, bw, ef);
 return -ENODEV;
}
