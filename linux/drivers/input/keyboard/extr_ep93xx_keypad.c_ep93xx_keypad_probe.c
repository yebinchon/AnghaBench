
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct matrix_keymap_data {int dummy; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {int evbit; TYPE_2__ dev; int close; int open; TYPE_1__ id; int name; } ;
struct ep93xx_keypad {int * mmio_base; int clk; int irq; TYPE_3__* pdata; int keycodes; struct input_dev* input_dev; } ;
struct TYPE_6__ {int flags; struct matrix_keymap_data* keymap_data; } ;


 int BUS_HOST ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EP93XX_KEYPAD_AUTOREPEAT ;
 int EP93XX_MATRIX_COLS ;
 int EP93XX_MATRIX_ROWS ;
 int EV_REP ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __set_bit (int ,int ) ;
 int clk_get (int *,int *) ;
 int clk_put (int ) ;
 TYPE_3__* dev_get_platdata (int *) ;
 int device_init_wakeup (int *,int) ;
 int ep93xx_keypad_acquire_gpio (struct platform_device*) ;
 int ep93xx_keypad_close ;
 int ep93xx_keypad_irq_handler ;
 int ep93xx_keypad_open ;
 int ep93xx_keypad_release_gpio (struct platform_device*) ;
 int free_irq (int ,struct ep93xx_keypad*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct ep93xx_keypad*) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int kfree (struct ep93xx_keypad*) ;
 struct ep93xx_keypad* kzalloc (int,int ) ;
 int matrix_keypad_build_keymap (struct matrix_keymap_data const*,int *,int ,int ,int ,struct input_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ep93xx_keypad*) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct ep93xx_keypad*) ;
 struct resource* request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ep93xx_keypad_probe(struct platform_device *pdev)
{
 struct ep93xx_keypad *keypad;
 const struct matrix_keymap_data *keymap_data;
 struct input_dev *input_dev;
 struct resource *res;
 int err;

 keypad = kzalloc(sizeof(struct ep93xx_keypad), GFP_KERNEL);
 if (!keypad)
  return -ENOMEM;

 keypad->pdata = dev_get_platdata(&pdev->dev);
 if (!keypad->pdata) {
  err = -EINVAL;
  goto failed_free;
 }

 keymap_data = keypad->pdata->keymap_data;
 if (!keymap_data) {
  err = -EINVAL;
  goto failed_free;
 }

 keypad->irq = platform_get_irq(pdev, 0);
 if (!keypad->irq) {
  err = -ENXIO;
  goto failed_free;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  err = -ENXIO;
  goto failed_free;
 }

 res = request_mem_region(res->start, resource_size(res), pdev->name);
 if (!res) {
  err = -EBUSY;
  goto failed_free;
 }

 keypad->mmio_base = ioremap(res->start, resource_size(res));
 if (keypad->mmio_base == ((void*)0)) {
  err = -ENXIO;
  goto failed_free_mem;
 }

 err = ep93xx_keypad_acquire_gpio(pdev);
 if (err)
  goto failed_free_io;

 keypad->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(keypad->clk)) {
  err = PTR_ERR(keypad->clk);
  goto failed_free_gpio;
 }

 input_dev = input_allocate_device();
 if (!input_dev) {
  err = -ENOMEM;
  goto failed_put_clk;
 }

 keypad->input_dev = input_dev;

 input_dev->name = pdev->name;
 input_dev->id.bustype = BUS_HOST;
 input_dev->open = ep93xx_keypad_open;
 input_dev->close = ep93xx_keypad_close;
 input_dev->dev.parent = &pdev->dev;

 err = matrix_keypad_build_keymap(keymap_data, ((void*)0),
      EP93XX_MATRIX_ROWS, EP93XX_MATRIX_COLS,
      keypad->keycodes, input_dev);
 if (err)
  goto failed_free_dev;

 if (keypad->pdata->flags & EP93XX_KEYPAD_AUTOREPEAT)
  __set_bit(EV_REP, input_dev->evbit);
 input_set_drvdata(input_dev, keypad);

 err = request_irq(keypad->irq, ep93xx_keypad_irq_handler,
     0, pdev->name, keypad);
 if (err)
  goto failed_free_dev;

 err = input_register_device(input_dev);
 if (err)
  goto failed_free_irq;

 platform_set_drvdata(pdev, keypad);
 device_init_wakeup(&pdev->dev, 1);

 return 0;

failed_free_irq:
 free_irq(keypad->irq, keypad);
failed_free_dev:
 input_free_device(input_dev);
failed_put_clk:
 clk_put(keypad->clk);
failed_free_gpio:
 ep93xx_keypad_release_gpio(pdev);
failed_free_io:
 iounmap(keypad->mmio_base);
failed_free_mem:
 release_mem_region(res->start, resource_size(res));
failed_free:
 kfree(keypad);
 return err;
}
