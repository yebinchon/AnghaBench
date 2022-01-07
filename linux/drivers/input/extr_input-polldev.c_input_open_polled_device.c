
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {scalar_t__ poll_interval; int (* poll ) (struct input_polled_dev*) ;int (* open ) (struct input_polled_dev*) ;} ;
struct input_dev {int dummy; } ;


 struct input_polled_dev* input_get_drvdata (struct input_dev*) ;
 int input_polldev_queue_work (struct input_polled_dev*) ;
 int stub1 (struct input_polled_dev*) ;
 int stub2 (struct input_polled_dev*) ;

__attribute__((used)) static int input_open_polled_device(struct input_dev *input)
{
 struct input_polled_dev *dev = input_get_drvdata(input);

 if (dev->open)
  dev->open(dev);


 if (dev->poll_interval > 0) {
  dev->poll(dev);
  input_polldev_queue_work(dev);
 }

 return 0;
}
