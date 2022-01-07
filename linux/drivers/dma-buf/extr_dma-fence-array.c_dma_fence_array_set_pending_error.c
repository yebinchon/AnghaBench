
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
struct dma_fence_array {TYPE_1__ base; } ;


 int PENDING_ERROR ;
 int cmpxchg (int *,int ,int) ;

__attribute__((used)) static void dma_fence_array_set_pending_error(struct dma_fence_array *array,
           int error)
{




 if (error)
  cmpxchg(&array->base.error, PENDING_ERROR, error);
}
