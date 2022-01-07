
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_dev_desc {int dummy; } ;


 int kfree (struct i3c_dev_desc*) ;

__attribute__((used)) static void i3c_master_free_i3c_dev(struct i3c_dev_desc *dev)
{
 kfree(dev);
}
