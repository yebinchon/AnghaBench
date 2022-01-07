
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int WARN_ON (int) ;
 unsigned int atomic64_add_return (unsigned int,int *) ;
 int dma_fence_context_counter ;

u64 dma_fence_context_alloc(unsigned num)
{
 WARN_ON(!num);
 return atomic64_add_return(num, &dma_fence_context_counter) - num;
}
