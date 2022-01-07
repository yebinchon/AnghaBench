
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_dev_uk {int ops_uk; } ;


 int iw_device_uk_ops ;

void i40iw_device_init_uk(struct i40iw_dev_uk *dev)
{
 dev->ops_uk = iw_device_uk_ops;
}
