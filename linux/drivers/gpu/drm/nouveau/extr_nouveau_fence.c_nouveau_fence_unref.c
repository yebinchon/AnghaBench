
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int base; } ;


 int dma_fence_put (int *) ;

void
nouveau_fence_unref(struct nouveau_fence **pfence)
{
 if (*pfence)
  dma_fence_put(&(*pfence)->base);
 *pfence = ((void*)0);
}
