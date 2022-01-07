
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bar {int dummy; } ;


 int gf100_bar_new_ (int *,struct nvkm_device*,int,struct nvkm_bar**) ;
 int tu102_bar ;

int
tu102_bar_new(struct nvkm_device *device, int index, struct nvkm_bar **pbar)
{
 return gf100_bar_new_(&tu102_bar, device, index, pbar);
}
