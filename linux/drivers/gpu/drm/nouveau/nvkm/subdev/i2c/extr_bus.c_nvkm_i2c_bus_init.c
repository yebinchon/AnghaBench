
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_bus {int enabled; int mutex; TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_i2c_bus*) ;} ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct nvkm_i2c_bus*) ;

void
nvkm_i2c_bus_init(struct nvkm_i2c_bus *bus)
{
 BUS_TRACE(bus, "init");
 if (bus->func->init)
  bus->func->init(bus);

 mutex_lock(&bus->mutex);
 bus->enabled = 1;
 mutex_unlock(&bus->mutex);
}
