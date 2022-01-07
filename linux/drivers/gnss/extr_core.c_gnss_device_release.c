
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {int id; int read_fifo; struct gnss_device* write_buf; } ;
struct device {int dummy; } ;


 int gnss_minors ;
 int ida_simple_remove (int *,int ) ;
 int kfifo_free (int *) ;
 int kfree (struct gnss_device*) ;
 struct gnss_device* to_gnss_device (struct device*) ;

__attribute__((used)) static void gnss_device_release(struct device *dev)
{
 struct gnss_device *gdev = to_gnss_device(dev);

 kfree(gdev->write_buf);
 kfifo_free(&gdev->read_fifo);
 ida_simple_remove(&gnss_minors, gdev->id);
 kfree(gdev);
}
