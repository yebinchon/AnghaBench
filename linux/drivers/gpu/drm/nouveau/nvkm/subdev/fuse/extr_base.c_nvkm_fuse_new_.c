
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fuse_func {int dummy; } ;
struct nvkm_fuse {int lock; struct nvkm_fuse_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_fuse* kzalloc (int,int ) ;
 int nvkm_fuse ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int spin_lock_init (int *) ;

int
nvkm_fuse_new_(const struct nvkm_fuse_func *func, struct nvkm_device *device,
        int index, struct nvkm_fuse **pfuse)
{
 struct nvkm_fuse *fuse;
 if (!(fuse = *pfuse = kzalloc(sizeof(*fuse), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_fuse, device, index, &fuse->subdev);
 fuse->func = func;
 spin_lock_init(&fuse->lock);
 return 0;
}
