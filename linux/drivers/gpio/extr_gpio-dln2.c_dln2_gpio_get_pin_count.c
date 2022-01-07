
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef int count ;
typedef int __le16 ;


 int DLN2_GPIO_GET_PIN_COUNT ;
 int EPROTO ;
 int dln2_transfer_rx (struct platform_device*,int ,int *,int*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int dln2_gpio_get_pin_count(struct platform_device *pdev)
{
 int ret;
 __le16 count;
 int len = sizeof(count);

 ret = dln2_transfer_rx(pdev, DLN2_GPIO_GET_PIN_COUNT, &count, &len);
 if (ret < 0)
  return ret;
 if (len < sizeof(count))
  return -EPROTO;

 return le16_to_cpu(count);
}
