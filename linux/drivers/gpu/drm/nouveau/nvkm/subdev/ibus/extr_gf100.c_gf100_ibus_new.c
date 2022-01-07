
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_ibus ;
 struct nvkm_subdev* kzalloc (int,int ) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,struct nvkm_subdev*) ;

int
gf100_ibus_new(struct nvkm_device *device, int index,
        struct nvkm_subdev **pibus)
{
 struct nvkm_subdev *ibus;
 if (!(ibus = *pibus = kzalloc(sizeof(*ibus), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&gf100_ibus, device, index, ibus);
 return 0;
}
