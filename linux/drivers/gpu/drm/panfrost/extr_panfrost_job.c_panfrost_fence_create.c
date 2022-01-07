
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_job_slot {TYPE_1__* queue; int job_lock; } ;
struct dma_fence {int dummy; } ;
struct panfrost_fence {int queue; struct dma_fence base; scalar_t__ seqno; int dev; } ;
struct panfrost_device {int ddev; struct panfrost_job_slot* js; } ;
struct TYPE_2__ {int fence_context; scalar_t__ emit_seqno; } ;


 int ENOMEM ;
 struct dma_fence* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,scalar_t__) ;
 struct panfrost_fence* kzalloc (int,int ) ;
 int panfrost_fence_ops ;

__attribute__((used)) static struct dma_fence *panfrost_fence_create(struct panfrost_device *pfdev, int js_num)
{
 struct panfrost_fence *fence;
 struct panfrost_job_slot *js = pfdev->js;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return ERR_PTR(-ENOMEM);

 fence->dev = pfdev->ddev;
 fence->queue = js_num;
 fence->seqno = ++js->queue[js_num].emit_seqno;
 dma_fence_init(&fence->base, &panfrost_fence_ops, &js->job_lock,
         js->queue[js_num].fence_context, fence->seqno);

 return &fence->base;
}
