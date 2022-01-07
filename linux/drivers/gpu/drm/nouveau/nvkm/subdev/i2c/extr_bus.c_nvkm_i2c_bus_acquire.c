
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {int mutex; scalar_t__ enabled; struct nvkm_i2c_pad* pad; } ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int EIO ;
 int NVKM_I2C_PAD_I2C ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_acquire (struct nvkm_i2c_pad*,int ) ;

int
nvkm_i2c_bus_acquire(struct nvkm_i2c_bus *bus)
{
 struct nvkm_i2c_pad *pad = bus->pad;
 int ret;

 BUS_TRACE(bus, "acquire");
 mutex_lock(&bus->mutex);

 if (bus->enabled)
  ret = nvkm_i2c_pad_acquire(pad, NVKM_I2C_PAD_I2C);
 else
  ret = -EIO;

 if (ret)
  mutex_unlock(&bus->mutex);
 return ret;
}
