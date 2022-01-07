
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int fence; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_fence* kzalloc (int,int ) ;
 int nouveau_fence_emit (struct nouveau_fence*,struct nouveau_channel*) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 scalar_t__ unlikely (int) ;

int
nouveau_fence_new(struct nouveau_channel *chan, bool sysmem,
    struct nouveau_fence **pfence)
{
 struct nouveau_fence *fence;
 int ret = 0;

 if (unlikely(!chan->fence))
  return -ENODEV;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return -ENOMEM;

 ret = nouveau_fence_emit(fence, chan);
 if (ret)
  nouveau_fence_unref(&fence);

 *pfence = fence;
 return ret;
}
