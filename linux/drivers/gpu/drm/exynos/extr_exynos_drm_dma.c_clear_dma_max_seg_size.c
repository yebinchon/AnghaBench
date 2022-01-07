
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * dma_parms; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void clear_dma_max_seg_size(struct device *dev)
{
 kfree(dev->dma_parms);
 dev->dma_parms = ((void*)0);
}
