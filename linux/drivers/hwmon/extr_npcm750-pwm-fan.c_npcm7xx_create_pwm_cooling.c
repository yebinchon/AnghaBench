
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct npcm7xx_pwm_fan_data {struct npcm7xx_cooling_device** cdev; } ;
struct npcm7xx_cooling_device {int pwm_port; struct npcm7xx_pwm_fan_data* data; int tcdev; int name; void* cooling_levels; int max_state; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THERMAL_NAME_LENGTH ;
 int dev_err (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_thermal_of_cooling_device_register (struct device*,struct device_node*,int ,struct npcm7xx_cooling_device*,int *) ;
 int npcm7xx_pwm_cool_ops ;
 int of_property_read_u8_array (struct device_node*,char*,void*,int) ;
 int snprintf (int ,int ,char*,struct device_node*,int) ;

__attribute__((used)) static int npcm7xx_create_pwm_cooling(struct device *dev,
          struct device_node *child,
          struct npcm7xx_pwm_fan_data *data,
          u32 pwm_port, u8 num_levels)
{
 int ret;
 struct npcm7xx_cooling_device *cdev;

 cdev = devm_kzalloc(dev, sizeof(*cdev), GFP_KERNEL);
 if (!cdev)
  return -ENOMEM;

 cdev->cooling_levels = devm_kzalloc(dev, num_levels, GFP_KERNEL);
 if (!cdev->cooling_levels)
  return -ENOMEM;

 cdev->max_state = num_levels - 1;
 ret = of_property_read_u8_array(child, "cooling-levels",
     cdev->cooling_levels,
     num_levels);
 if (ret) {
  dev_err(dev, "Property 'cooling-levels' cannot be read.\n");
  return ret;
 }
 snprintf(cdev->name, THERMAL_NAME_LENGTH, "%pOFn%d", child,
   pwm_port);

 cdev->tcdev = devm_thermal_of_cooling_device_register(dev, child,
    cdev->name, cdev, &npcm7xx_pwm_cool_ops);
 if (IS_ERR(cdev->tcdev))
  return PTR_ERR(cdev->tcdev);

 cdev->data = data;
 cdev->pwm_port = pwm_port;

 data->cdev[pwm_port] = cdev;

 return 0;
}
