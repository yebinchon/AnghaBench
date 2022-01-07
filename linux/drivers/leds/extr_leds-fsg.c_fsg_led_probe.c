
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ENOMEM ;
 int IXP4XX_EXP_BUS_BASE (int) ;
 scalar_t__ devm_ioremap (int *,int ,int) ;
 int devm_led_classdev_register (int *,int *) ;
 int fsg_ring_led ;
 int fsg_sata_led ;
 int fsg_sync_led ;
 int fsg_usb_led ;
 int fsg_wan_led ;
 int fsg_wlan_led ;
 int* latch_address ;
 int latch_value ;

__attribute__((used)) static int fsg_led_probe(struct platform_device *pdev)
{
 int ret;


 latch_address = (unsigned short *) devm_ioremap(&pdev->dev,
      IXP4XX_EXP_BUS_BASE(2), 512);
 if (!latch_address)
  return -ENOMEM;

 latch_value = 0xffff;
 *latch_address = latch_value;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_wlan_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_wan_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_sata_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_usb_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_sync_led);
 if (ret < 0)
  return ret;

 ret = devm_led_classdev_register(&pdev->dev, &fsg_ring_led);
 if (ret < 0)
  return ret;

 return ret;
}
