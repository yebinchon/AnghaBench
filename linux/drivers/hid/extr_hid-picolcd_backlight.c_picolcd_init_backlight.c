
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct picolcd_data {int lcd_brightness; struct backlight_device* backlight; TYPE_1__* hdev; } ;
struct hid_report {int maxfield; TYPE_2__** field; } ;
struct device {int dummy; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_6__ {int brightness; } ;
struct backlight_device {TYPE_3__ props; } ;
typedef int props ;
struct TYPE_5__ {int report_count; int report_size; } ;
struct TYPE_4__ {struct device dev; } ;


 int BACKLIGHT_RAW ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (int ,struct device*,struct picolcd_data*,int *,struct backlight_properties*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int picolcd_blops ;
 int picolcd_set_brightness (struct backlight_device*) ;

int picolcd_init_backlight(struct picolcd_data *data, struct hid_report *report)
{
 struct device *dev = &data->hdev->dev;
 struct backlight_device *bdev;
 struct backlight_properties props;
 if (!report)
  return -ENODEV;
 if (report->maxfield != 1 || report->field[0]->report_count != 1 ||
   report->field[0]->report_size != 8) {
  dev_err(dev, "unsupported BRIGHTNESS report");
  return -EINVAL;
 }

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = 0xff;
 bdev = backlight_device_register(dev_name(dev), dev, data,
   &picolcd_blops, &props);
 if (IS_ERR(bdev)) {
  dev_err(dev, "failed to register backlight\n");
  return PTR_ERR(bdev);
 }
 bdev->props.brightness = 0xff;
 data->lcd_brightness = 0xff;
 data->backlight = bdev;
 picolcd_set_brightness(bdev);
 return 0;
}
