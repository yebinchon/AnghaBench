
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_fence {TYPE_1__* gpu; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 char const* dev_name (int ) ;
 struct etnaviv_fence* to_etnaviv_fence (struct dma_fence*) ;

__attribute__((used)) static const char *etnaviv_fence_get_timeline_name(struct dma_fence *fence)
{
 struct etnaviv_fence *f = to_etnaviv_fence(fence);

 return dev_name(f->gpu->dev);
}
