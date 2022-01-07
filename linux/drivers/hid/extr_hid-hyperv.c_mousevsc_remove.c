
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousevsc_dev {int hid_device; } ;
struct hv_device {int channel; int device; } ;


 int device_init_wakeup (int *,int) ;
 int hid_destroy_device (int ) ;
 int hid_hw_stop (int ) ;
 struct mousevsc_dev* hv_get_drvdata (struct hv_device*) ;
 int mousevsc_free_device (struct mousevsc_dev*) ;
 int vmbus_close (int ) ;

__attribute__((used)) static int mousevsc_remove(struct hv_device *dev)
{
 struct mousevsc_dev *input_dev = hv_get_drvdata(dev);

 device_init_wakeup(&dev->device, 0);
 vmbus_close(dev->channel);
 hid_hw_stop(input_dev->hid_device);
 hid_destroy_device(input_dev->hid_device);
 mousevsc_free_device(input_dev);

 return 0;
}
