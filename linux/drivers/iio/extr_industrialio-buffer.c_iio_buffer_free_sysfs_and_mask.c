
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_dev {TYPE_3__* buffer; } ;
struct TYPE_5__ {int attrs; } ;
struct TYPE_4__ {int attrs; } ;
struct TYPE_6__ {int scan_el_dev_attr_list; TYPE_2__ scan_el_group; TYPE_1__ buffer_group; int scan_mask; } ;


 int bitmap_free (int ) ;
 int iio_free_chan_devattr_list (int *) ;
 int kfree (int ) ;

void iio_buffer_free_sysfs_and_mask(struct iio_dev *indio_dev)
{
 if (!indio_dev->buffer)
  return;

 bitmap_free(indio_dev->buffer->scan_mask);
 kfree(indio_dev->buffer->buffer_group.attrs);
 kfree(indio_dev->buffer->scan_el_group.attrs);
 iio_free_chan_devattr_list(&indio_dev->buffer->scan_el_dev_attr_list);
}
