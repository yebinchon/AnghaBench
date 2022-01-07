
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {scalar_t__ mode; int mutex; } ;


 scalar_t__ NVKM_I2C_PAD_OFF ;
 int PAD_TRACE (struct nvkm_i2c_pad*,char*) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_mode_locked (struct nvkm_i2c_pad*,scalar_t__) ;

void
nvkm_i2c_pad_release(struct nvkm_i2c_pad *pad)
{
 PAD_TRACE(pad, "release");
 if (pad->mode == NVKM_I2C_PAD_OFF)
  nvkm_i2c_pad_mode_locked(pad, pad->mode);
 mutex_unlock(&pad->mutex);
}
