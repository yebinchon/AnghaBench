
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct iio_dev {int num_channels; TYPE_1__* channels; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (TYPE_2__*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 TYPE_1__* stm32_dac_channels ;

__attribute__((used)) static int stm32_dac_chan_of_init(struct iio_dev *indio_dev)
{
 struct device_node *np = indio_dev->dev.of_node;
 unsigned int i;
 u32 channel;
 int ret;

 ret = of_property_read_u32(np, "reg", &channel);
 if (ret) {
  dev_err(&indio_dev->dev, "Failed to read reg property\n");
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(stm32_dac_channels); i++) {
  if (stm32_dac_channels[i].channel == channel)
   break;
 }
 if (i >= ARRAY_SIZE(stm32_dac_channels)) {
  dev_err(&indio_dev->dev, "Invalid reg property\n");
  return -EINVAL;
 }

 indio_dev->channels = &stm32_dac_channels[i];





 indio_dev->num_channels = 1;

 return 0;
}
