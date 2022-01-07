
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int ENOMEM ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 struct dma_fence* mock_fence () ;

__attribute__((used)) static int sanitycheck(void *arg)
{
 struct dma_fence *f;

 f = mock_fence();
 if (!f)
  return -ENOMEM;

 dma_fence_signal(f);
 dma_fence_put(f);

 return 0;
}
