
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_ram {int dummy; } ;
struct nvkm_fb {int dummy; } ;
struct nv50_fb {int base; TYPE_1__* func; } ;
struct TYPE_2__ {int (* ram_new ) (int *,struct nvkm_ram**) ;} ;


 struct nv50_fb* nv50_fb (struct nvkm_fb*) ;
 int stub1 (int *,struct nvkm_ram**) ;

__attribute__((used)) static int
nv50_fb_ram_new(struct nvkm_fb *base, struct nvkm_ram **pram)
{
 struct nv50_fb *fb = nv50_fb(base);
 return fb->func->ram_new(&fb->base, pram);
}
