
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_gpio_platform_data {void* scl_is_output_only; void* scl_is_open_drain; void* sda_is_open_drain; int timeout; int udelay; } ;
struct device_node {int dummy; } ;


 int msecs_to_jiffies (int ) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void of_i2c_gpio_get_props(struct device_node *np,
      struct i2c_gpio_platform_data *pdata)
{
 u32 reg;

 of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);

 if (!of_property_read_u32(np, "i2c-gpio,timeout-ms", &reg))
  pdata->timeout = msecs_to_jiffies(reg);

 pdata->sda_is_open_drain =
  of_property_read_bool(np, "i2c-gpio,sda-open-drain");
 pdata->scl_is_open_drain =
  of_property_read_bool(np, "i2c-gpio,scl-open-drain");
 pdata->scl_is_output_only =
  of_property_read_bool(np, "i2c-gpio,scl-output-only");
}
