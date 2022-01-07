
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_sdr_dev {int urbs_initialized; int urbs_submitted; int * urb_list; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int rtl2832_sdr_kill_urbs (struct rtl2832_sdr_dev*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl2832_sdr_submit_urbs(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 int i, ret;

 for (i = 0; i < dev->urbs_initialized; i++) {
  dev_dbg(&pdev->dev, "submit urb=%d\n", i);
  ret = usb_submit_urb(dev->urb_list[i], GFP_KERNEL);
  if (ret) {
   dev_err(&pdev->dev,
    "Could not submit urb no. %d - get them all back\n",
    i);
   rtl2832_sdr_kill_urbs(dev);
   return ret;
  }
  dev->urbs_submitted++;
 }

 return 0;
}
