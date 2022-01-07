
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpi_firmware {int dummy; } ;
struct TYPE_2__ {int base; int can_sleep; int set; int get; int get_direction; int direction_output; int direction_input; int ngpio; struct device_node* of_node; int owner; int label; struct device* parent; } ;
struct rpi_exp_gpio {TYPE_1__ gc; struct rpi_firmware* fw; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int MODULE_NAME ;
 int NUM_GPIO ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct rpi_exp_gpio*) ;
 struct rpi_exp_gpio* devm_kzalloc (struct device*,int,int ) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int rpi_exp_gpio_dir_in ;
 int rpi_exp_gpio_dir_out ;
 int rpi_exp_gpio_get ;
 int rpi_exp_gpio_get_direction ;
 int rpi_exp_gpio_set ;
 struct rpi_firmware* rpi_firmware_get (struct device_node*) ;

__attribute__((used)) static int rpi_exp_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct device_node *fw_node;
 struct rpi_firmware *fw;
 struct rpi_exp_gpio *rpi_gpio;

 fw_node = of_get_parent(np);
 if (!fw_node) {
  dev_err(dev, "Missing firmware node\n");
  return -ENOENT;
 }

 fw = rpi_firmware_get(fw_node);
 of_node_put(fw_node);
 if (!fw)
  return -EPROBE_DEFER;

 rpi_gpio = devm_kzalloc(dev, sizeof(*rpi_gpio), GFP_KERNEL);
 if (!rpi_gpio)
  return -ENOMEM;

 rpi_gpio->fw = fw;
 rpi_gpio->gc.parent = dev;
 rpi_gpio->gc.label = MODULE_NAME;
 rpi_gpio->gc.owner = THIS_MODULE;
 rpi_gpio->gc.of_node = np;
 rpi_gpio->gc.base = -1;
 rpi_gpio->gc.ngpio = NUM_GPIO;

 rpi_gpio->gc.direction_input = rpi_exp_gpio_dir_in;
 rpi_gpio->gc.direction_output = rpi_exp_gpio_dir_out;
 rpi_gpio->gc.get_direction = rpi_exp_gpio_get_direction;
 rpi_gpio->gc.get = rpi_exp_gpio_get;
 rpi_gpio->gc.set = rpi_exp_gpio_set;
 rpi_gpio->gc.can_sleep = 1;

 return devm_gpiochip_add_data(dev, &rpi_gpio->gc, rpi_gpio);
}
