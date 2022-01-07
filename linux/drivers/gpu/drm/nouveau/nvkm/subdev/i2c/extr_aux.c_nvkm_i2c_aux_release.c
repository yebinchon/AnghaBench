
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {int mutex; struct nvkm_i2c_pad* pad; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_release (struct nvkm_i2c_pad*) ;

void
nvkm_i2c_aux_release(struct nvkm_i2c_aux *aux)
{
 struct nvkm_i2c_pad *pad = aux->pad;
 AUX_TRACE(aux, "release");
 nvkm_i2c_pad_release(pad);
 mutex_unlock(&aux->mutex);
}
