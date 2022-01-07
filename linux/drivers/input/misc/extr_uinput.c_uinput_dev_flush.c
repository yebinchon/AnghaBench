
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct file {int dummy; } ;


 int input_ff_flush (struct input_dev*,struct file*) ;

__attribute__((used)) static int uinput_dev_flush(struct input_dev *dev, struct file *file)
{







 return file ? input_ff_flush(dev, file) : 0;
}
