
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int input; } ;


 int GFP_KERNEL ;
 int input_allocate_device () ;
 int kfree (struct input_polled_dev*) ;
 struct input_polled_dev* kzalloc (int,int ) ;

struct input_polled_dev *input_allocate_polled_device(void)
{
 struct input_polled_dev *dev;

 dev = kzalloc(sizeof(struct input_polled_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->input = input_allocate_device();
 if (!dev->input) {
  kfree(dev);
  return ((void*)0);
 }

 return dev;
}
