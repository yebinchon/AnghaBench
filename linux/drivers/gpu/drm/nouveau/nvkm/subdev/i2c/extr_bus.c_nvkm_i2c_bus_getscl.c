
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_bus {TYPE_1__* func; } ;
struct TYPE_2__ {int (* sense_scl ) (struct nvkm_i2c_bus*) ;} ;


 int stub1 (struct nvkm_i2c_bus*) ;

__attribute__((used)) static int
nvkm_i2c_bus_getscl(void *data)
{
 struct nvkm_i2c_bus *bus = data;
 return bus->func->sense_scl(bus);
}
