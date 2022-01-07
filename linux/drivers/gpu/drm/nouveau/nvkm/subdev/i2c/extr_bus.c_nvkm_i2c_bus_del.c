
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_i2c_bus* algo_data; } ;
struct nvkm_i2c_bus {TYPE_1__ i2c; int head; int func; } ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int WARN_ON (int) ;
 int i2c_del_adapter (TYPE_1__*) ;
 int kfree (struct nvkm_i2c_bus*) ;
 int list_del (int *) ;

void
nvkm_i2c_bus_del(struct nvkm_i2c_bus **pbus)
{
 struct nvkm_i2c_bus *bus = *pbus;
 if (bus && !WARN_ON(!bus->func)) {
  BUS_TRACE(bus, "dtor");
  list_del(&bus->head);
  i2c_del_adapter(&bus->i2c);
  kfree(bus->i2c.algo_data);
  kfree(*pbus);
  *pbus = ((void*)0);
 }
}
