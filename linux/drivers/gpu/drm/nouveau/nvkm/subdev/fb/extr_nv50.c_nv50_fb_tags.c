
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fb {int dummy; } ;
struct nv50_fb {int base; TYPE_1__* func; } ;
struct TYPE_2__ {int (* tags ) (int *) ;} ;


 struct nv50_fb* nv50_fb (struct nvkm_fb*) ;
 int stub1 (int *) ;

__attribute__((used)) static u32
nv50_fb_tags(struct nvkm_fb *base)
{
 struct nv50_fb *fb = nv50_fb(base);
 if (fb->func->tags)
  return fb->func->tags(&fb->base);
 return 0;
}
