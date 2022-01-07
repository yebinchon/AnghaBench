
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int * timestamp; } ;
typedef int ktime_t ;


 size_t INPUT_CLK_MONO ;
 int input_set_timestamp (struct input_dev*,int ) ;
 int ktime_compare (int ,int const) ;
 int ktime_get () ;
 int ktime_set (int ,int ) ;

ktime_t *input_get_timestamp(struct input_dev *dev)
{
 const ktime_t invalid_timestamp = ktime_set(0, 0);

 if (!ktime_compare(dev->timestamp[INPUT_CLK_MONO], invalid_timestamp))
  input_set_timestamp(dev, ktime_get());

 return dev->timestamp;
}
