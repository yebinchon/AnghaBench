
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_fence_context {int last_fence; int context; int spinlock; } ;
struct dma_fence {int dummy; } ;
struct msm_fence {struct dma_fence base; struct msm_fence_context* fctx; } ;


 int ENOMEM ;
 struct dma_fence* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 struct msm_fence* kzalloc (int,int ) ;
 int msm_fence_ops ;

struct dma_fence *
msm_fence_alloc(struct msm_fence_context *fctx)
{
 struct msm_fence *f;

 f = kzalloc(sizeof(*f), GFP_KERNEL);
 if (!f)
  return ERR_PTR(-ENOMEM);

 f->fctx = fctx;

 dma_fence_init(&f->base, &msm_fence_ops, &fctx->spinlock,
         fctx->context, ++fctx->last_fence);

 return &f->base;
}
