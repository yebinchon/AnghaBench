
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int seqno; } ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static void timeline_fence_value_str(struct dma_fence *fence,
        char *str, int size)
{
 snprintf(str, size, "%lld", fence->seqno);
}
