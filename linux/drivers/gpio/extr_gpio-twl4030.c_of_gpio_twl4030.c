
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct twl4030_gpio_platform_data {int pulldowns; int pullups; int mmc_cd; int debounce; int use_leds; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 struct twl4030_gpio_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static struct twl4030_gpio_platform_data *of_gpio_twl4030(struct device *dev,
    struct twl4030_gpio_platform_data *pdata)
{
 struct twl4030_gpio_platform_data *omap_twl_info;

 omap_twl_info = devm_kzalloc(dev, sizeof(*omap_twl_info), GFP_KERNEL);
 if (!omap_twl_info)
  return ((void*)0);

 if (pdata)
  *omap_twl_info = *pdata;

 omap_twl_info->use_leds = of_property_read_bool(dev->of_node,
   "ti,use-leds");

 of_property_read_u32(dev->of_node, "ti,debounce",
        &omap_twl_info->debounce);
 of_property_read_u32(dev->of_node, "ti,mmc-cd",
        (u32 *)&omap_twl_info->mmc_cd);
 of_property_read_u32(dev->of_node, "ti,pullups",
        &omap_twl_info->pullups);
 of_property_read_u32(dev->of_node, "ti,pulldowns",
        &omap_twl_info->pulldowns);

 return omap_twl_info;
}
