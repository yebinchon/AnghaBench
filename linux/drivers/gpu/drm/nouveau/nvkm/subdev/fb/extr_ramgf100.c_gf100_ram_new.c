
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct nvkm_fb {int dummy; } ;


 int gf100_ram ;
 int gf100_ram_new_ (int *,struct nvkm_fb*,struct nvkm_ram**) ;

int
gf100_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 return gf100_ram_new_(&gf100_ram, fb, pram);
}
