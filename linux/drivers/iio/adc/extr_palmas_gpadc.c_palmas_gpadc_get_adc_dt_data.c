
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct palmas_gpadc_platform_data {int extended_delay; void* ch3_current; void* ch0_current; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct palmas_gpadc_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static int palmas_gpadc_get_adc_dt_data(struct platform_device *pdev,
 struct palmas_gpadc_platform_data **gpadc_pdata)
{
 struct device_node *np = pdev->dev.of_node;
 struct palmas_gpadc_platform_data *gp_data;
 int ret;
 u32 pval;

 gp_data = devm_kzalloc(&pdev->dev, sizeof(*gp_data), GFP_KERNEL);
 if (!gp_data)
  return -ENOMEM;

 ret = of_property_read_u32(np, "ti,channel0-current-microamp", &pval);
 if (!ret)
  gp_data->ch0_current = pval;

 ret = of_property_read_u32(np, "ti,channel3-current-microamp", &pval);
 if (!ret)
  gp_data->ch3_current = pval;

 gp_data->extended_delay = of_property_read_bool(np,
     "ti,enable-extended-delay");

 *gpadc_pdata = gp_data;

 return 0;
}
