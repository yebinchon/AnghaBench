
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_fence {scalar_t__ seqno; int dev; } ;
struct vc4_dev {scalar_t__ finished_seqno; } ;
struct dma_fence {int dummy; } ;


 struct vc4_dev* to_vc4_dev (int ) ;
 struct vc4_fence* to_vc4_fence (struct dma_fence*) ;

__attribute__((used)) static bool vc4_fence_signaled(struct dma_fence *fence)
{
 struct vc4_fence *f = to_vc4_fence(fence);
 struct vc4_dev *vc4 = to_vc4_dev(f->dev);

 return vc4->finished_seqno >= f->seqno;
}
