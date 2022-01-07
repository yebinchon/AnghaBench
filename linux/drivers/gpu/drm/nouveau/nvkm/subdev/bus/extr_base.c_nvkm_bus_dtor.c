
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;


 void* nvkm_bus (struct nvkm_subdev*) ;

__attribute__((used)) static void *
nvkm_bus_dtor(struct nvkm_subdev *subdev)
{
 return nvkm_bus(subdev);
}
