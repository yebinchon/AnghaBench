
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct wm97xx_pdata {int dummy; } ;
struct wm97xx {TYPE_7__* input_dev; TYPE_3__* touch_dev; int dev; } ;
struct TYPE_12__ {int parent; } ;
struct TYPE_15__ {char* name; char* phys; TYPE_1__ dev; int keybit; int evbit; int close; int open; } ;
struct TYPE_13__ {struct wm97xx_pdata* platform_data; int parent; } ;
struct TYPE_14__ {TYPE_2__ dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int __set_bit (int ,int ) ;
 int * abs_p ;
 int * abs_x ;
 int * abs_y ;
 struct wm97xx_pdata* dev_get_platdata (int ) ;
 TYPE_7__* devm_input_allocate_device (int ) ;
 int input_register_device (TYPE_7__*) ;
 int input_set_abs_params (TYPE_7__*,int ,int ,int ,int ,int ) ;
 int input_set_drvdata (TYPE_7__*,struct wm97xx*) ;
 int input_unregister_device (TYPE_7__*) ;
 int platform_device_add (TYPE_3__*) ;
 TYPE_3__* platform_device_alloc (char*,int) ;
 int platform_device_put (TYPE_3__*) ;
 int platform_set_drvdata (TYPE_3__*,struct wm97xx*) ;
 int wm97xx_ts_input_close ;
 int wm97xx_ts_input_open ;

__attribute__((used)) static int wm97xx_register_touch(struct wm97xx *wm)
{
 struct wm97xx_pdata *pdata = dev_get_platdata(wm->dev);
 int ret;

 wm->input_dev = devm_input_allocate_device(wm->dev);
 if (wm->input_dev == ((void*)0))
  return -ENOMEM;


 wm->input_dev->name = "wm97xx touchscreen";
 wm->input_dev->phys = "wm97xx";
 wm->input_dev->open = wm97xx_ts_input_open;
 wm->input_dev->close = wm97xx_ts_input_close;

 __set_bit(EV_ABS, wm->input_dev->evbit);
 __set_bit(EV_KEY, wm->input_dev->evbit);
 __set_bit(BTN_TOUCH, wm->input_dev->keybit);

 input_set_abs_params(wm->input_dev, ABS_X, abs_x[0], abs_x[1],
        abs_x[2], 0);
 input_set_abs_params(wm->input_dev, ABS_Y, abs_y[0], abs_y[1],
        abs_y[2], 0);
 input_set_abs_params(wm->input_dev, ABS_PRESSURE, abs_p[0], abs_p[1],
        abs_p[2], 0);

 input_set_drvdata(wm->input_dev, wm);
 wm->input_dev->dev.parent = wm->dev;

 ret = input_register_device(wm->input_dev);
 if (ret)
  return ret;





 wm->touch_dev = platform_device_alloc("wm97xx-touch", -1);
 if (!wm->touch_dev) {
  ret = -ENOMEM;
  goto touch_err;
 }
 platform_set_drvdata(wm->touch_dev, wm);
 wm->touch_dev->dev.parent = wm->dev;
 wm->touch_dev->dev.platform_data = pdata;
 ret = platform_device_add(wm->touch_dev);
 if (ret < 0)
  goto touch_reg_err;

 return 0;
touch_reg_err:
 platform_device_put(wm->touch_dev);
touch_err:
 input_unregister_device(wm->input_dev);
 wm->input_dev = ((void*)0);

 return ret;
}
