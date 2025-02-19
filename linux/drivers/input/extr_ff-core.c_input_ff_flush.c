
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; struct ff_device* ff; } ;
struct file {int dummy; } ;
struct ff_device {int max_effects; int mutex; } ;


 int dev_dbg (int *,char*) ;
 int erase_effect (struct input_dev*,int,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int input_ff_flush(struct input_dev *dev, struct file *file)
{
 struct ff_device *ff = dev->ff;
 int i;

 dev_dbg(&dev->dev, "flushing now\n");

 mutex_lock(&ff->mutex);

 for (i = 0; i < ff->max_effects; i++)
  erase_effect(dev, i, file);

 mutex_unlock(&ff->mutex);

 return 0;
}
