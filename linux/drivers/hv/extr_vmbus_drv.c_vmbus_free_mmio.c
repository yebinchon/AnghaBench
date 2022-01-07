
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; } ;
typedef scalar_t__ resource_size_t ;


 int __release_region (struct resource*,scalar_t__,scalar_t__) ;
 int down (int *) ;
 struct resource* hyperv_mmio ;
 int hyperv_mmio_lock ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int up (int *) ;

void vmbus_free_mmio(resource_size_t start, resource_size_t size)
{
 struct resource *iter;

 down(&hyperv_mmio_lock);
 for (iter = hyperv_mmio; iter; iter = iter->sibling) {
  if ((iter->start >= start + size) || (iter->end <= start))
   continue;

  __release_region(iter, start, size);
 }
 release_mem_region(start, size);
 up(&hyperv_mmio_lock);

}
