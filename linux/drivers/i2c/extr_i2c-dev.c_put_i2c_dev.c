
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_dev {int list; } ;


 int i2c_dev_list_lock ;
 int kfree (struct i2c_dev*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_i2c_dev(struct i2c_dev *i2c_dev)
{
 spin_lock(&i2c_dev_list_lock);
 list_del(&i2c_dev->list);
 spin_unlock(&i2c_dev_list_lock);
 kfree(i2c_dev);
}
