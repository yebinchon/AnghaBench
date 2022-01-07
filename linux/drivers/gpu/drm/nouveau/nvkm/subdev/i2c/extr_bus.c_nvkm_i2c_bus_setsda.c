
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_bus {TYPE_1__* func; } ;
struct TYPE_2__ {int (* drive_sda ) (struct nvkm_i2c_bus*,int) ;} ;


 int stub1 (struct nvkm_i2c_bus*,int) ;

__attribute__((used)) static void
nvkm_i2c_bus_setsda(void *data, int state)
{
 struct nvkm_i2c_bus *bus = data;
 bus->func->drive_sda(bus, state);
}
