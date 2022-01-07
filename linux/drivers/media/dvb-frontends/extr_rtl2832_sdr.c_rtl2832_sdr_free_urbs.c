
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_sdr_dev {int urbs_initialized; scalar_t__* urb_list; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int rtl2832_sdr_kill_urbs (struct rtl2832_sdr_dev*) ;
 int usb_free_urb (scalar_t__) ;

__attribute__((used)) static int rtl2832_sdr_free_urbs(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 int i;

 rtl2832_sdr_kill_urbs(dev);

 for (i = dev->urbs_initialized - 1; i >= 0; i--) {
  if (dev->urb_list[i]) {
   dev_dbg(&pdev->dev, "free urb=%d\n", i);

   usb_free_urb(dev->urb_list[i]);
  }
 }
 dev->urbs_initialized = 0;

 return 0;
}
