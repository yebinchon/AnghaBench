
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {int mutex; int open_count; } ;
struct input_dev {int dummy; } ;


 int W8001_CMD_START ;
 struct w8001* input_get_drvdata (struct input_dev*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int w8001_command (struct w8001*,int ,int) ;

__attribute__((used)) static int w8001_open(struct input_dev *dev)
{
 struct w8001 *w8001 = input_get_drvdata(dev);
 int err;

 err = mutex_lock_interruptible(&w8001->mutex);
 if (err)
  return err;

 if (w8001->open_count++ == 0) {
  err = w8001_command(w8001, W8001_CMD_START, 0);
  if (err)
   w8001->open_count--;
 }

 mutex_unlock(&w8001->mutex);
 return err;
}
