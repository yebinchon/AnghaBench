
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct st_keyscan {scalar_t__ irq; int clk; int base; int n_cols; int n_rows; struct input_dev* input_dev; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct TYPE_11__ {int bustype; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; TYPE_2__ id; int close; int open; TYPE_1__ dev; int name; } ;


 int BUS_HOST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_enable (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int device_set_wakeup_capable (TYPE_3__*,int) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 struct input_dev* devm_input_allocate_device (TYPE_3__*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct st_keyscan* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,scalar_t__,int ,int ,int ,struct st_keyscan*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct st_keyscan*) ;
 int keypad_matrix_key_parse_dt (struct st_keyscan*) ;
 int keyscan_close ;
 int keyscan_isr ;
 int keyscan_open ;
 int keyscan_stop (struct st_keyscan*) ;
 int matrix_keypad_build_keymap (int *,int *,int ,int ,int *,struct input_dev*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct st_keyscan*) ;

__attribute__((used)) static int keyscan_probe(struct platform_device *pdev)
{
 struct st_keyscan *keypad_data;
 struct input_dev *input_dev;
 struct resource *res;
 int error;

 if (!pdev->dev.of_node) {
  dev_err(&pdev->dev, "no DT data present\n");
  return -EINVAL;
 }

 keypad_data = devm_kzalloc(&pdev->dev, sizeof(*keypad_data),
       GFP_KERNEL);
 if (!keypad_data)
  return -ENOMEM;

 input_dev = devm_input_allocate_device(&pdev->dev);
 if (!input_dev) {
  dev_err(&pdev->dev, "failed to allocate the input device\n");
  return -ENOMEM;
 }

 input_dev->name = pdev->name;
 input_dev->phys = "keyscan-keys/input0";
 input_dev->dev.parent = &pdev->dev;
 input_dev->open = keyscan_open;
 input_dev->close = keyscan_close;

 input_dev->id.bustype = BUS_HOST;

 keypad_data->input_dev = input_dev;

 error = keypad_matrix_key_parse_dt(keypad_data);
 if (error)
  return error;

 error = matrix_keypad_build_keymap(((void*)0), ((void*)0),
        keypad_data->n_rows,
        keypad_data->n_cols,
        ((void*)0), input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to build keymap\n");
  return error;
 }

 input_set_drvdata(input_dev, keypad_data);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 keypad_data->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(keypad_data->base))
  return PTR_ERR(keypad_data->base);

 keypad_data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(keypad_data->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(keypad_data->clk);
 }

 error = clk_enable(keypad_data->clk);
 if (error) {
  dev_err(&pdev->dev, "failed to enable clock\n");
  return error;
 }

 keyscan_stop(keypad_data);

 keypad_data->irq = platform_get_irq(pdev, 0);
 if (keypad_data->irq < 0)
  return -EINVAL;

 error = devm_request_irq(&pdev->dev, keypad_data->irq, keyscan_isr, 0,
     pdev->name, keypad_data);
 if (error) {
  dev_err(&pdev->dev, "failed to request IRQ\n");
  return error;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to register input device\n");
  return error;
 }

 platform_set_drvdata(pdev, keypad_data);

 device_set_wakeup_capable(&pdev->dev, 1);

 return 0;
}
