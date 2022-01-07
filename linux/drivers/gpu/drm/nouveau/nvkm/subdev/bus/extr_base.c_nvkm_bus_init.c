
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_bus {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_bus*) ;} ;


 struct nvkm_bus* nvkm_bus (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_bus*) ;

__attribute__((used)) static int
nvkm_bus_init(struct nvkm_subdev *subdev)
{
 struct nvkm_bus *bus = nvkm_bus(subdev);
 bus->func->init(bus);
 return 0;
}
