
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * attrs; } ;
struct iio_dev {TYPE_1__ chan_attr_group; int channel_attr_list; } ;


 int iio_free_chan_devattr_list (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void iio_device_unregister_sysfs(struct iio_dev *indio_dev)
{

 iio_free_chan_devattr_list(&indio_dev->channel_attr_list);
 kfree(indio_dev->chan_attr_group.attrs);
 indio_dev->chan_attr_group.attrs = ((void*)0);
}
