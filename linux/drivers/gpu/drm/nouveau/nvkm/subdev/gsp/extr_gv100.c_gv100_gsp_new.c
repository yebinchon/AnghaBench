
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gsp {int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gv100_gsp ;
 struct nvkm_gsp* kzalloc (int,int ) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
gv100_gsp_new(struct nvkm_device *device, int index, struct nvkm_gsp **pgsp)
{
 struct nvkm_gsp *gsp;

 if (!(gsp = *pgsp = kzalloc(sizeof(*gsp), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_subdev_ctor(&gv100_gsp, device, index, &gsp->subdev);
 return 0;
}
