
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {int mutex; scalar_t__ enabled; struct nvkm_i2c_pad* pad; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*) ;
 int EIO ;
 int NVKM_I2C_PAD_AUX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_acquire (struct nvkm_i2c_pad*,int ) ;

int
nvkm_i2c_aux_acquire(struct nvkm_i2c_aux *aux)
{
 struct nvkm_i2c_pad *pad = aux->pad;
 int ret;

 AUX_TRACE(aux, "acquire");
 mutex_lock(&aux->mutex);

 if (aux->enabled)
  ret = nvkm_i2c_pad_acquire(pad, NVKM_I2C_PAD_AUX);
 else
  ret = -EIO;

 if (ret)
  mutex_unlock(&aux->mutex);
 return ret;
}
