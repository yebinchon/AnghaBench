
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int evbit; struct ff_device* ff; } ;
struct file {int dummy; } ;
struct ff_device {int mutex; } ;


 int ENOSYS ;
 int EV_FF ;
 int erase_effect (struct input_dev*,int,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

int input_ff_erase(struct input_dev *dev, int effect_id, struct file *file)
{
 struct ff_device *ff = dev->ff;
 int ret;

 if (!test_bit(EV_FF, dev->evbit))
  return -ENOSYS;

 mutex_lock(&ff->mutex);
 ret = erase_effect(dev, effect_id, file);
 mutex_unlock(&ff->mutex);

 return ret;
}
