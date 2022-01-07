
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int aspeed_create_fan_tach_channel (struct aspeed_pwm_tacho_data*,int *,int,scalar_t__) ;
 int aspeed_create_pwm_cooling (struct device*,struct device_node*,struct aspeed_pwm_tacho_data*,scalar_t__,int) ;
 int aspeed_create_pwm_port (struct aspeed_pwm_tacho_data*,int ) ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 int of_property_count_u8_elems (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int of_property_read_u8_array (struct device_node*,char*,int *,int) ;

__attribute__((used)) static int aspeed_create_fan(struct device *dev,
        struct device_node *child,
        struct aspeed_pwm_tacho_data *priv)
{
 u8 *fan_tach_ch;
 u32 pwm_port;
 int ret, count;

 ret = of_property_read_u32(child, "reg", &pwm_port);
 if (ret)
  return ret;
 aspeed_create_pwm_port(priv, (u8)pwm_port);

 ret = of_property_count_u8_elems(child, "cooling-levels");

 if (ret > 0) {
  ret = aspeed_create_pwm_cooling(dev, child, priv, pwm_port,
      ret);
  if (ret)
   return ret;
 }

 count = of_property_count_u8_elems(child, "aspeed,fan-tach-ch");
 if (count < 1)
  return -EINVAL;
 fan_tach_ch = devm_kcalloc(dev, count, sizeof(*fan_tach_ch),
       GFP_KERNEL);
 if (!fan_tach_ch)
  return -ENOMEM;
 ret = of_property_read_u8_array(child, "aspeed,fan-tach-ch",
     fan_tach_ch, count);
 if (ret)
  return ret;
 aspeed_create_fan_tach_channel(priv, fan_tach_ch, count, pwm_port);

 return 0;
}
