
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int use_count; } ;


 int atomic64_inc (int *) ;

void i40iw_add_devusecount(struct i40iw_device *iwdev)
{
 atomic64_inc(&iwdev->use_count);
}
