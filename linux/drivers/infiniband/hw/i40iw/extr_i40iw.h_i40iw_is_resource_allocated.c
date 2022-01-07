
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_device {int resource_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline bool i40iw_is_resource_allocated(struct i40iw_device *iwdev,
            unsigned long *resource_array,
            u32 resource_num)
{
 bool bit_is_set;
 unsigned long flags;

 spin_lock_irqsave(&iwdev->resource_lock, flags);

 bit_is_set = test_bit(resource_num, resource_array);
 spin_unlock_irqrestore(&iwdev->resource_lock, flags);

 return bit_is_set;
}
