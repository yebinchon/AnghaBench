
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_device {int resource_lock; } ;


 int clear_bit (int ,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void i40iw_free_resource(struct i40iw_device *iwdev,
           unsigned long *resource_array,
           u32 resource_num)
{
 unsigned long flags;

 spin_lock_irqsave(&iwdev->resource_lock, flags);
 clear_bit(resource_num, resource_array);
 spin_unlock_irqrestore(&iwdev->resource_lock, flags);
}
