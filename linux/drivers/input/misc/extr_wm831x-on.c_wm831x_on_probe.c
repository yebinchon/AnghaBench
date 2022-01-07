
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wm831x_on {TYPE_2__* dev; int work; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_9__ {char* name; char* phys; TYPE_1__ dev; void** keybit; void** evbit; } ;


 void* BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int KEY_POWER ;
 int dev_dbg (TYPE_3__*,char*,int) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 TYPE_2__* devm_input_allocate_device (TYPE_3__*) ;
 struct wm831x_on* devm_kzalloc (TYPE_3__*,int,int ) ;
 int free_irq (int,struct wm831x_on*) ;
 int input_register_device (TYPE_2__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_on*) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct wm831x_on*) ;
 int wm831x_irq (struct wm831x*,int ) ;
 int wm831x_on_irq ;
 int wm831x_poll_on ;

__attribute__((used)) static int wm831x_on_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_on *wm831x_on;
 int irq = wm831x_irq(wm831x, platform_get_irq(pdev, 0));
 int ret;

 wm831x_on = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_on),
     GFP_KERNEL);
 if (!wm831x_on) {
  dev_err(&pdev->dev, "Can't allocate data\n");
  return -ENOMEM;
 }

 wm831x_on->wm831x = wm831x;
 INIT_DELAYED_WORK(&wm831x_on->work, wm831x_poll_on);

 wm831x_on->dev = devm_input_allocate_device(&pdev->dev);
 if (!wm831x_on->dev) {
  dev_err(&pdev->dev, "Can't allocate input dev\n");
  ret = -ENOMEM;
  goto err;
 }

 wm831x_on->dev->evbit[0] = BIT_MASK(EV_KEY);
 wm831x_on->dev->keybit[BIT_WORD(KEY_POWER)] = BIT_MASK(KEY_POWER);
 wm831x_on->dev->name = "wm831x_on";
 wm831x_on->dev->phys = "wm831x_on/input0";
 wm831x_on->dev->dev.parent = &pdev->dev;

 ret = request_threaded_irq(irq, ((void*)0), wm831x_on_irq,
       IRQF_TRIGGER_RISING | IRQF_ONESHOT,
       "wm831x_on",
       wm831x_on);
 if (ret < 0) {
  dev_err(&pdev->dev, "Unable to request IRQ: %d\n", ret);
  goto err_input_dev;
 }
 ret = input_register_device(wm831x_on->dev);
 if (ret) {
  dev_dbg(&pdev->dev, "Can't register input device: %d\n", ret);
  goto err_irq;
 }

 platform_set_drvdata(pdev, wm831x_on);

 return 0;

err_irq:
 free_irq(irq, wm831x_on);
err_input_dev:
err:
 return ret;
}
