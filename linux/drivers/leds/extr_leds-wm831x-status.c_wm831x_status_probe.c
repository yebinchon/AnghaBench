
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wm831x_status_pdata {int default_src; int default_trigger; int name; } ;
struct TYPE_5__ {int groups; int blink_set; int brightness_set_blocking; int default_trigger; int name; } ;
struct wm831x_status {int reg_val; int src; TYPE_1__ cdev; int brightness; int reg; int value_lock; int mutex; struct wm831x* wm831x; } ;
struct wm831x_pdata {scalar_t__* status; } ;
struct wm831x {int dev; } ;
struct resource {int start; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
typedef int pdata ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_REG ;
 int LED_FULL ;
 int LED_OFF ;
 int WM831X_LED_MODE_MASK ;
 int WM831X_LED_SRC_MASK ;
 int WM831X_LED_SRC_SHIFT ;
 int WM831X_STATUS_PRESERVE ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (int ) ;
 int dev_name (TYPE_2__*) ;
 struct wm831x_status* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_led_classdev_register (int ,TYPE_1__*) ;
 int memcpy (struct wm831x_status_pdata*,scalar_t__,int) ;
 int memset (struct wm831x_status_pdata*,int ,int) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_status_blink_set ;
 int wm831x_status_brightness_set ;
 int wm831x_status_groups ;

__attribute__((used)) static int wm831x_status_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *chip_pdata;
 struct wm831x_status_pdata pdata;
 struct wm831x_status *drvdata;
 struct resource *res;
 int id = pdev->id % ARRAY_SIZE(chip_pdata->status);
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_REG, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "No register resource\n");
  return -EINVAL;
 }

 drvdata = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_status),
          GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 drvdata->wm831x = wm831x;
 drvdata->reg = res->start;

 if (dev_get_platdata(wm831x->dev))
  chip_pdata = dev_get_platdata(wm831x->dev);
 else
  chip_pdata = ((void*)0);

 memset(&pdata, 0, sizeof(pdata));
 if (chip_pdata && chip_pdata->status[id])
  memcpy(&pdata, chip_pdata->status[id], sizeof(pdata));
 else
  pdata.name = dev_name(&pdev->dev);

 mutex_init(&drvdata->mutex);
 spin_lock_init(&drvdata->value_lock);



 drvdata->reg_val = wm831x_reg_read(wm831x, drvdata->reg);

 if (drvdata->reg_val & WM831X_LED_MODE_MASK)
  drvdata->brightness = LED_FULL;
 else
  drvdata->brightness = LED_OFF;




 if (pdata.default_src == WM831X_STATUS_PRESERVE) {
  drvdata->src = drvdata->reg_val;
  drvdata->src &= WM831X_LED_SRC_MASK;
  drvdata->src >>= WM831X_LED_SRC_SHIFT;
 } else {
  drvdata->src = pdata.default_src - 1;
 }

 drvdata->cdev.name = pdata.name;
 drvdata->cdev.default_trigger = pdata.default_trigger;
 drvdata->cdev.brightness_set_blocking = wm831x_status_brightness_set;
 drvdata->cdev.blink_set = wm831x_status_blink_set;
 drvdata->cdev.groups = wm831x_status_groups;

 ret = devm_led_classdev_register(wm831x->dev, &drvdata->cdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register LED: %d\n", ret);
  return ret;
 }

 return 0;
}
