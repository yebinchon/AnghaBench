
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bar {int iomap_uncached; } ;


 int gf100_bar_new_ (int *,struct nvkm_device*,int,struct nvkm_bar**) ;
 int gm20b_bar_func ;

int
gm20b_bar_new(struct nvkm_device *device, int index, struct nvkm_bar **pbar)
{
 int ret = gf100_bar_new_(&gm20b_bar_func, device, index, pbar);
 if (ret == 0)
  (*pbar)->iomap_uncached = 1;
 return ret;
}
