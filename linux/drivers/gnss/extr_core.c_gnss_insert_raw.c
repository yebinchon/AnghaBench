
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {int read_queue; int read_fifo; } ;


 int kfifo_in (int *,unsigned char const*,size_t) ;
 int wake_up_interruptible (int *) ;

int gnss_insert_raw(struct gnss_device *gdev, const unsigned char *buf,
    size_t count)
{
 int ret;

 ret = kfifo_in(&gdev->read_fifo, buf, count);

 wake_up_interruptible(&gdev->read_queue);

 return ret;
}
