
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {char const* name; int dead; } ;
struct nouveau_fence {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct nouveau_fence* from_fence (struct dma_fence*) ;
 struct nouveau_fence_chan* nouveau_fctx (struct nouveau_fence*) ;

__attribute__((used)) static const char *nouveau_fence_get_timeline_name(struct dma_fence *f)
{
 struct nouveau_fence *fence = from_fence(f);
 struct nouveau_fence_chan *fctx = nouveau_fctx(fence);

 return !fctx->dead ? fctx->name : "dead channel";
}
