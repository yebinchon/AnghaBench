
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_device {int resource_lock; } ;


 int EOVERFLOW ;
 scalar_t__ find_first_zero_bit (unsigned long*,scalar_t__) ;
 scalar_t__ find_next_zero_bit (unsigned long*,scalar_t__,scalar_t__) ;
 int set_bit (scalar_t__,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int i40iw_alloc_resource(struct i40iw_device *iwdev,
           unsigned long *resource_array,
           u32 max_resources,
           u32 *req_resource_num,
           u32 *next)
{
 u32 resource_num;
 unsigned long flags;

 spin_lock_irqsave(&iwdev->resource_lock, flags);
 resource_num = find_next_zero_bit(resource_array, max_resources, *next);
 if (resource_num >= max_resources) {
  resource_num = find_first_zero_bit(resource_array, max_resources);
  if (resource_num >= max_resources) {
   spin_unlock_irqrestore(&iwdev->resource_lock, flags);
   return -EOVERFLOW;
  }
 }
 set_bit(resource_num, resource_array);
 *next = resource_num + 1;
 if (*next == max_resources)
  *next = 0;
 *req_resource_num = resource_num;
 spin_unlock_irqrestore(&iwdev->resource_lock, flags);

 return 0;
}
