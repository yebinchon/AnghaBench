
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_mockup_dbgfs_private {int offset; int * desc; struct gpio_mockup_chip* chip; } ;
struct gpio_chip {int ngpio; TYPE_1__* gpiodev; } ;
struct gpio_mockup_chip {int dbg_dir; struct gpio_chip gc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * descs; int dev; } ;


 int GFP_KERNEL ;
 int debugfs_create_dir (char const*,int ) ;
 int debugfs_create_file (char*,int,int ,struct gpio_mockup_dbgfs_private*,int *) ;
 char* dev_name (int *) ;
 char* devm_kasprintf (struct device*,int ,char*,int) ;
 struct gpio_mockup_dbgfs_private* devm_kzalloc (struct device*,int,int ) ;
 int gpio_mockup_dbg_dir ;
 int gpio_mockup_debugfs_ops ;

__attribute__((used)) static void gpio_mockup_debugfs_setup(struct device *dev,
          struct gpio_mockup_chip *chip)
{
 struct gpio_mockup_dbgfs_private *priv;
 struct gpio_chip *gc;
 const char *devname;
 char *name;
 int i;

 gc = &chip->gc;
 devname = dev_name(&gc->gpiodev->dev);

 chip->dbg_dir = debugfs_create_dir(devname, gpio_mockup_dbg_dir);

 for (i = 0; i < gc->ngpio; i++) {
  name = devm_kasprintf(dev, GFP_KERNEL, "%d", i);
  if (!name)
   return;

  priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
  if (!priv)
   return;

  priv->chip = chip;
  priv->offset = i;
  priv->desc = &gc->gpiodev->descs[i];

  debugfs_create_file(name, 0200, chip->dbg_dir, priv,
        &gpio_mockup_debugfs_ops);
 }

 return;
}
