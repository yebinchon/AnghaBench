
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spear_kbd {int irq; int clk; scalar_t__ rep; int keycodes; int io_base; int suspended_rate; int mode; struct input_dev* input; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct matrix_keymap_data {int dummy; } ;
struct kbd_platform_data {int suspended_rate; scalar_t__ rep; int mode; struct matrix_keymap_data* keymap; } ;
struct TYPE_2__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {char* name; char* phys; int evbit; int close; int open; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MSC_SCAN ;
 int NUM_COLS ;
 int NUM_ROWS ;
 int PTR_ERR (int ) ;
 int __set_bit (int ,int ) ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*) ;
 struct kbd_platform_data* dev_get_platdata (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_clk_get (int *,int *) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct spear_kbd* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct spear_kbd*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct spear_kbd*) ;
 int matrix_keypad_build_keymap (struct matrix_keymap_data const*,int *,int ,int ,int ,struct input_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spear_kbd*) ;
 int spear_kbd_close ;
 int spear_kbd_interrupt ;
 int spear_kbd_open ;
 int spear_kbd_parse_dt (struct platform_device*,struct spear_kbd*) ;

__attribute__((used)) static int spear_kbd_probe(struct platform_device *pdev)
{
 struct kbd_platform_data *pdata = dev_get_platdata(&pdev->dev);
 const struct matrix_keymap_data *keymap = pdata ? pdata->keymap : ((void*)0);
 struct spear_kbd *kbd;
 struct input_dev *input_dev;
 struct resource *res;
 int irq;
 int error;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 kbd = devm_kzalloc(&pdev->dev, sizeof(*kbd), GFP_KERNEL);
 if (!kbd) {
  dev_err(&pdev->dev, "not enough memory for driver data\n");
  return -ENOMEM;
 }

 input_dev = devm_input_allocate_device(&pdev->dev);
 if (!input_dev) {
  dev_err(&pdev->dev, "unable to allocate input device\n");
  return -ENOMEM;
 }

 kbd->input = input_dev;
 kbd->irq = irq;

 if (!pdata) {
  error = spear_kbd_parse_dt(pdev, kbd);
  if (error)
   return error;
 } else {
  kbd->mode = pdata->mode;
  kbd->rep = pdata->rep;
  kbd->suspended_rate = pdata->suspended_rate;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 kbd->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(kbd->io_base))
  return PTR_ERR(kbd->io_base);

 kbd->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(kbd->clk))
  return PTR_ERR(kbd->clk);

 input_dev->name = "Spear Keyboard";
 input_dev->phys = "keyboard/input0";
 input_dev->id.bustype = BUS_HOST;
 input_dev->id.vendor = 0x0001;
 input_dev->id.product = 0x0001;
 input_dev->id.version = 0x0100;
 input_dev->open = spear_kbd_open;
 input_dev->close = spear_kbd_close;

 error = matrix_keypad_build_keymap(keymap, ((void*)0), NUM_ROWS, NUM_COLS,
        kbd->keycodes, input_dev);
 if (error) {
  dev_err(&pdev->dev, "Failed to build keymap\n");
  return error;
 }

 if (kbd->rep)
  __set_bit(EV_REP, input_dev->evbit);
 input_set_capability(input_dev, EV_MSC, MSC_SCAN);

 input_set_drvdata(input_dev, kbd);

 error = devm_request_irq(&pdev->dev, irq, spear_kbd_interrupt, 0,
   "keyboard", kbd);
 if (error) {
  dev_err(&pdev->dev, "request_irq failed\n");
  return error;
 }

 error = clk_prepare(kbd->clk);
 if (error)
  return error;

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&pdev->dev, "Unable to register keyboard device\n");
  clk_unprepare(kbd->clk);
  return error;
 }

 device_init_wakeup(&pdev->dev, 1);
 platform_set_drvdata(pdev, kbd);

 return 0;
}
