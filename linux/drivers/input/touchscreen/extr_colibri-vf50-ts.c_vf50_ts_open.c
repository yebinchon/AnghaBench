
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf50_touch_device {int stop_touchscreen; TYPE_1__* pdev; } ;
struct input_dev {int name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_dbg (struct device*,char*,int ) ;
 struct vf50_touch_device* input_get_drvdata (struct input_dev*) ;
 int vf50_ts_enable_touch_detection (struct vf50_touch_device*) ;

__attribute__((used)) static int vf50_ts_open(struct input_dev *dev_input)
{
 struct vf50_touch_device *touchdev = input_get_drvdata(dev_input);
 struct device *dev = &touchdev->pdev->dev;

 dev_dbg(dev, "Input device %s opened, starting touch detection\n",
  dev_input->name);

 touchdev->stop_touchscreen = 0;


 vf50_ts_enable_touch_detection(touchdev);

 return 0;
}
