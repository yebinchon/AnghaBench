
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct omap4_keypad {int irq; int reg_offset; int irqreg_offset; unsigned int row_shift; unsigned int rows; scalar_t__ base; struct omap4_keypad* keymap; struct input_dev* input; int cols; int no_autorepeat; } ;
struct TYPE_4__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_3__ {int * parent; } ;
struct input_dev {int evbit; int close; int open; TYPE_2__ id; TYPE_1__ dev; int name; } ;


 int BUS_HOST ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;


 int MSC_SCAN ;
 scalar_t__ OMAP4_KBD_REVISION ;
 int __raw_readl (scalar_t__) ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int device_init_wakeup (int *,int) ;
 int free_irq (int,struct omap4_keypad*) ;
 unsigned int get_count_order (int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct omap4_keypad*) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 struct omap4_keypad* kcalloc (unsigned int,int,int ) ;
 int kfree (struct omap4_keypad*) ;
 struct omap4_keypad* kzalloc (int,int ) ;
 int matrix_keypad_build_keymap (int *,int *,unsigned int,int ,struct omap4_keypad*,struct input_dev*) ;
 int omap4_keypad_close ;
 int omap4_keypad_irq_handler ;
 int omap4_keypad_irq_thread_fn ;
 int omap4_keypad_open ;
 int omap4_keypad_parse_dt (int *,struct omap4_keypad*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct omap4_keypad*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int release_mem_region (int ,int ) ;
 struct resource* request_mem_region (int ,int ,int ) ;
 int request_threaded_irq (int,int ,int ,int ,char*,struct omap4_keypad*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int omap4_keypad_probe(struct platform_device *pdev)
{
 struct omap4_keypad *keypad_data;
 struct input_dev *input_dev;
 struct resource *res;
 unsigned int max_keys;
 int rev;
 int irq;
 int error;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "no base address specified\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (!irq) {
  dev_err(&pdev->dev, "no keyboard irq assigned\n");
  return -EINVAL;
 }

 keypad_data = kzalloc(sizeof(struct omap4_keypad), GFP_KERNEL);
 if (!keypad_data) {
  dev_err(&pdev->dev, "keypad_data memory allocation failed\n");
  return -ENOMEM;
 }

 keypad_data->irq = irq;

 error = omap4_keypad_parse_dt(&pdev->dev, keypad_data);
 if (error)
  goto err_free_keypad;

 res = request_mem_region(res->start, resource_size(res), pdev->name);
 if (!res) {
  dev_err(&pdev->dev, "can't request mem region\n");
  error = -EBUSY;
  goto err_free_keypad;
 }

 keypad_data->base = ioremap(res->start, resource_size(res));
 if (!keypad_data->base) {
  dev_err(&pdev->dev, "can't ioremap mem resource\n");
  error = -ENOMEM;
  goto err_release_mem;
 }






 pm_runtime_enable(&pdev->dev);
 error = pm_runtime_get_sync(&pdev->dev);
 if (error) {
  dev_err(&pdev->dev, "pm_runtime_get_sync() failed\n");
  goto err_unmap;
 }
 rev = __raw_readl(keypad_data->base + OMAP4_KBD_REVISION);
 rev &= 0x03 << 30;
 rev >>= 30;
 switch (rev) {
 case 129:
  keypad_data->reg_offset = 0x00;
  keypad_data->irqreg_offset = 0x00;
  break;
 case 128:
  keypad_data->reg_offset = 0x10;
  keypad_data->irqreg_offset = 0x0c;
  break;
 default:
  dev_err(&pdev->dev,
   "Keypad reports unsupported revision %d", rev);
  error = -EINVAL;
  goto err_pm_put_sync;
 }


 keypad_data->input = input_dev = input_allocate_device();
 if (!input_dev) {
  error = -ENOMEM;
  goto err_pm_put_sync;
 }

 input_dev->name = pdev->name;
 input_dev->dev.parent = &pdev->dev;
 input_dev->id.bustype = BUS_HOST;
 input_dev->id.vendor = 0x0001;
 input_dev->id.product = 0x0001;
 input_dev->id.version = 0x0001;

 input_dev->open = omap4_keypad_open;
 input_dev->close = omap4_keypad_close;

 input_set_capability(input_dev, EV_MSC, MSC_SCAN);
 if (!keypad_data->no_autorepeat)
  __set_bit(EV_REP, input_dev->evbit);

 input_set_drvdata(input_dev, keypad_data);

 keypad_data->row_shift = get_count_order(keypad_data->cols);
 max_keys = keypad_data->rows << keypad_data->row_shift;
 keypad_data->keymap = kcalloc(max_keys,
          sizeof(keypad_data->keymap[0]),
          GFP_KERNEL);
 if (!keypad_data->keymap) {
  dev_err(&pdev->dev, "Not enough memory for keymap\n");
  error = -ENOMEM;
  goto err_free_input;
 }

 error = matrix_keypad_build_keymap(((void*)0), ((void*)0),
        keypad_data->rows, keypad_data->cols,
        keypad_data->keymap, input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to build keymap\n");
  goto err_free_keymap;
 }

 error = request_threaded_irq(keypad_data->irq, omap4_keypad_irq_handler,
         omap4_keypad_irq_thread_fn, IRQF_ONESHOT,
         "omap4-keypad", keypad_data);
 if (error) {
  dev_err(&pdev->dev, "failed to register interrupt\n");
  goto err_free_keymap;
 }

 device_init_wakeup(&pdev->dev, 1);
 pm_runtime_put_sync(&pdev->dev);

 error = input_register_device(keypad_data->input);
 if (error < 0) {
  dev_err(&pdev->dev, "failed to register input device\n");
  goto err_pm_disable;
 }

 platform_set_drvdata(pdev, keypad_data);
 return 0;

err_pm_disable:
 pm_runtime_disable(&pdev->dev);
 free_irq(keypad_data->irq, keypad_data);
err_free_keymap:
 kfree(keypad_data->keymap);
err_free_input:
 input_free_device(input_dev);
err_pm_put_sync:
 pm_runtime_put_sync(&pdev->dev);
err_unmap:
 iounmap(keypad_data->base);
err_release_mem:
 release_mem_region(res->start, resource_size(res));
err_free_keypad:
 kfree(keypad_data);
 return error;
}
