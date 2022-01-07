
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {scalar_t__ open_count; int mutex; } ;
struct input_dev {int dummy; } ;


 int W8001_CMD_STOP ;
 struct w8001* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w8001_command (struct w8001*,int ,int) ;

__attribute__((used)) static void w8001_close(struct input_dev *dev)
{
 struct w8001 *w8001 = input_get_drvdata(dev);

 mutex_lock(&w8001->mutex);

 if (--w8001->open_count == 0)
  w8001_command(w8001, W8001_CMD_STOP, 0);

 mutex_unlock(&w8001->mutex);
}
