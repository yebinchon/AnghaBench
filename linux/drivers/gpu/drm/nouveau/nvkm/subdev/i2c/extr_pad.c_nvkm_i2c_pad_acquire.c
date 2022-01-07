
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int mode; int mutex; } ;
typedef enum nvkm_i2c_pad_mode { ____Placeholder_nvkm_i2c_pad_mode } nvkm_i2c_pad_mode ;


 int EBUSY ;
 scalar_t__ NVKM_I2C_PAD_OFF ;
 int PAD_TRACE (struct nvkm_i2c_pad*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_mode_locked (struct nvkm_i2c_pad*,int) ;

int
nvkm_i2c_pad_acquire(struct nvkm_i2c_pad *pad, enum nvkm_i2c_pad_mode mode)
{
 PAD_TRACE(pad, "acquire");
 mutex_lock(&pad->mutex);
 if (pad->mode != mode) {
  if (pad->mode != NVKM_I2C_PAD_OFF) {
   mutex_unlock(&pad->mutex);
   return -EBUSY;
  }
  nvkm_i2c_pad_mode_locked(pad, mode);
 }
 return 0;
}
