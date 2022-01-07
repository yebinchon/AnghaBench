
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fuse {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv50_fuse ;
 int nvkm_fuse_new_ (int *,struct nvkm_device*,int,struct nvkm_fuse**) ;

int
nv50_fuse_new(struct nvkm_device *device, int index, struct nvkm_fuse **pfuse)
{
 return nvkm_fuse_new_(&nv50_fuse, device, index, pfuse);
}
