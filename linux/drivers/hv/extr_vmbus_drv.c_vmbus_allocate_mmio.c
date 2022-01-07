
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; char* name; struct resource* sibling; } ;
struct hv_device {int device; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 int ENXIO ;
 int IORESOURCE_BUSY ;
 int __release_region (struct resource*,scalar_t__,scalar_t__) ;
 struct resource* __request_region (struct resource*,scalar_t__,scalar_t__,int *,int ) ;
 char* dev_name (int *) ;
 int down (int *) ;
 TYPE_1__* fb_mmio ;
 struct resource* hyperv_mmio ;
 int hyperv_mmio_lock ;
 struct resource* request_mem_region_exclusive (scalar_t__,scalar_t__,char const*) ;
 int up (int *) ;

int vmbus_allocate_mmio(struct resource **new, struct hv_device *device_obj,
   resource_size_t min, resource_size_t max,
   resource_size_t size, resource_size_t align,
   bool fb_overlap_ok)
{
 struct resource *iter, *shadow;
 resource_size_t range_min, range_max, start;
 const char *dev_n = dev_name(&device_obj->device);
 int retval;

 retval = -ENXIO;
 down(&hyperv_mmio_lock);






 if (fb_overlap_ok && fb_mmio && !(min > fb_mmio->end) &&
     !(max < fb_mmio->start)) {

  range_min = fb_mmio->start;
  range_max = fb_mmio->end;
  start = (range_min + align - 1) & ~(align - 1);
  for (; start + size - 1 <= range_max; start += align) {
   *new = request_mem_region_exclusive(start, size, dev_n);
   if (*new) {
    retval = 0;
    goto exit;
   }
  }
 }

 for (iter = hyperv_mmio; iter; iter = iter->sibling) {
  if ((iter->start >= max) || (iter->end <= min))
   continue;

  range_min = iter->start;
  range_max = iter->end;
  start = (range_min + align - 1) & ~(align - 1);
  for (; start + size - 1 <= range_max; start += align) {
   shadow = __request_region(iter, start, size, ((void*)0),
        IORESOURCE_BUSY);
   if (!shadow)
    continue;

   *new = request_mem_region_exclusive(start, size, dev_n);
   if (*new) {
    shadow->name = (char *)*new;
    retval = 0;
    goto exit;
   }

   __release_region(iter, start, size);
  }
 }

exit:
 up(&hyperv_mmio_lock);
 return retval;
}
