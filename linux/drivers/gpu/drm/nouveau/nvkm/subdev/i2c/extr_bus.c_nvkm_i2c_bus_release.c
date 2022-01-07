
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {int mutex; struct nvkm_i2c_pad* pad; } ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int mutex_unlock (int *) ;
 int nvkm_i2c_pad_release (struct nvkm_i2c_pad*) ;

void
nvkm_i2c_bus_release(struct nvkm_i2c_bus *bus)
{
 struct nvkm_i2c_pad *pad = bus->pad;
 BUS_TRACE(bus, "release");
 nvkm_i2c_pad_release(pad);
 mutex_unlock(&bus->mutex);
}
