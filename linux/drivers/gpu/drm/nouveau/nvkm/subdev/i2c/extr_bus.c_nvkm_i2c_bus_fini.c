
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_bus {int enabled; int mutex; } ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
nvkm_i2c_bus_fini(struct nvkm_i2c_bus *bus)
{
 BUS_TRACE(bus, "fini");
 mutex_lock(&bus->mutex);
 bus->enabled = 0;
 mutex_unlock(&bus->mutex);
}
