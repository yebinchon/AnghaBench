
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct davinci_gpio_platform_data {void* gpio_unbanked; void* ngpio; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct davinci_gpio_platform_data* dev_get_platdata (TYPE_1__*) ;
 struct davinci_gpio_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static struct davinci_gpio_platform_data *
davinci_gpio_get_pdata(struct platform_device *pdev)
{
 struct device_node *dn = pdev->dev.of_node;
 struct davinci_gpio_platform_data *pdata;
 int ret;
 u32 val;

 if (!IS_ENABLED(CONFIG_OF) || !pdev->dev.of_node)
  return dev_get_platdata(&pdev->dev);

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 ret = of_property_read_u32(dn, "ti,ngpio", &val);
 if (ret)
  goto of_err;

 pdata->ngpio = val;

 ret = of_property_read_u32(dn, "ti,davinci-gpio-unbanked", &val);
 if (ret)
  goto of_err;

 pdata->gpio_unbanked = val;

 return pdata;

of_err:
 dev_err(&pdev->dev, "Populating pdata from DT failed: err %d\n", ret);
 return ((void*)0);
}
