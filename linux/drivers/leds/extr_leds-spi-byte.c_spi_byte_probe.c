
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_5__ {scalar_t__ brightness; scalar_t__ max_brightness; int (* brightness_set_blocking ) (TYPE_2__*,scalar_t__) ;int name; } ;
struct spi_byte_led {int mutex; TYPE_2__ ldev; TYPE_1__* cdef; int name; struct spi_device* spi; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ off_value; scalar_t__ max_value; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LED_OFF ;
 int dev_err (struct device*,char*) ;
 struct spi_byte_led* devm_kzalloc (struct device*,int,int ) ;
 int devm_led_classdev_register (struct device*,TYPE_2__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int of_get_child_count (int ) ;
 struct device_node* of_get_next_child (int ,int *) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int spi_byte_brightness_set_blocking (TYPE_2__*,scalar_t__) ;
 int spi_byte_dt_ids ;
 int spi_set_drvdata (struct spi_device*,struct spi_byte_led*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int spi_byte_probe(struct spi_device *spi)
{
 const struct of_device_id *of_dev_id;
 struct device_node *child;
 struct device *dev = &spi->dev;
 struct spi_byte_led *led;
 const char *name = "leds-spi-byte::";
 const char *state;
 int ret;

 of_dev_id = of_match_device(spi_byte_dt_ids, dev);
 if (!of_dev_id)
  return -EINVAL;

 if (of_get_child_count(dev->of_node) != 1) {
  dev_err(dev, "Device must have exactly one LED sub-node.");
  return -EINVAL;
 }
 child = of_get_next_child(dev->of_node, ((void*)0));

 led = devm_kzalloc(dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 of_property_read_string(child, "label", &name);
 strlcpy(led->name, name, sizeof(led->name));
 led->spi = spi;
 mutex_init(&led->mutex);
 led->cdef = of_dev_id->data;
 led->ldev.name = led->name;
 led->ldev.brightness = LED_OFF;
 led->ldev.max_brightness = led->cdef->max_value - led->cdef->off_value;
 led->ldev.brightness_set_blocking = spi_byte_brightness_set_blocking;

 state = of_get_property(child, "default-state", ((void*)0));
 if (state) {
  if (!strcmp(state, "on")) {
   led->ldev.brightness = led->ldev.max_brightness;
  } else if (strcmp(state, "off")) {

   dev_err(dev, "default-state can only be 'on' or 'off'");
   return -EINVAL;
  }
 }
 spi_byte_brightness_set_blocking(&led->ldev,
      led->ldev.brightness);

 ret = devm_led_classdev_register(&spi->dev, &led->ldev);
 if (ret) {
  mutex_destroy(&led->mutex);
  return ret;
 }
 spi_set_drvdata(spi, led);

 return 0;
}
