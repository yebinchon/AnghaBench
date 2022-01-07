
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct TYPE_11__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; TYPE_2__ id; int close; int open; TYPE_1__ dev; int name; int evbit; } ;
struct bcm_kp {scalar_t__ irq; int * clk; int * base; int n_cols; int n_rows; struct input_dev* input_dev; } ;


 int BUS_HOST ;
 unsigned int DEFAULT_CLK_HZ ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_KEY ;
 int EV_REP ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int __set_bit (int ,int ) ;
 int bcm_kp_close ;
 int bcm_kp_isr_thread ;
 int bcm_kp_matrix_key_parse_dt (struct bcm_kp*) ;
 int bcm_kp_open ;
 int bcm_kp_stop (struct bcm_kp*) ;
 int clk_prepare_enable (int *) ;
 long clk_round_rate (int *,unsigned int) ;
 int clk_set_rate (int *,long) ;
 int dev_dbg (TYPE_3__*,char*) ;
 int dev_err (TYPE_3__*,char*) ;
 int * devm_clk_get (TYPE_3__*,char*) ;
 struct input_dev* devm_input_allocate_device (TYPE_3__*) ;
 int * devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct bcm_kp* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,scalar_t__,int *,int ,int ,int ,struct bcm_kp*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct bcm_kp*) ;
 int matrix_keypad_build_keymap (int *,int *,int ,int ,int *,struct input_dev*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,unsigned int*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int bcm_kp_probe(struct platform_device *pdev)
{
 struct bcm_kp *kp;
 struct input_dev *input_dev;
 struct resource *res;
 int error;

 kp = devm_kzalloc(&pdev->dev, sizeof(*kp), GFP_KERNEL);
 if (!kp)
  return -ENOMEM;

 input_dev = devm_input_allocate_device(&pdev->dev);
 if (!input_dev) {
  dev_err(&pdev->dev, "failed to allocate the input device\n");
  return -ENOMEM;
 }

 __set_bit(EV_KEY, input_dev->evbit);


 if (of_property_read_bool(pdev->dev.of_node, "autorepeat"))
  __set_bit(EV_REP, input_dev->evbit);

 input_dev->name = pdev->name;
 input_dev->phys = "keypad/input0";
 input_dev->dev.parent = &pdev->dev;
 input_dev->open = bcm_kp_open;
 input_dev->close = bcm_kp_close;

 input_dev->id.bustype = BUS_HOST;
 input_dev->id.vendor = 0x0001;
 input_dev->id.product = 0x0001;
 input_dev->id.version = 0x0100;

 input_set_drvdata(input_dev, kp);

 kp->input_dev = input_dev;

 error = bcm_kp_matrix_key_parse_dt(kp);
 if (error)
  return error;

 error = matrix_keypad_build_keymap(((void*)0), ((void*)0),
        kp->n_rows, kp->n_cols,
        ((void*)0), input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to build keymap\n");
  return error;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "Missing keypad base address resource\n");
  return -ENODEV;
 }

 kp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(kp->base))
  return PTR_ERR(kp->base);


 kp->clk = devm_clk_get(&pdev->dev, "peri_clk");
 if (IS_ERR(kp->clk)) {
  error = PTR_ERR(kp->clk);
  if (error != -ENOENT) {
   if (error != -EPROBE_DEFER)
    dev_err(&pdev->dev, "Failed to get clock\n");
   return error;
  }
  dev_dbg(&pdev->dev,
   "No clock specified. Assuming it's enabled\n");
  kp->clk = ((void*)0);
 } else {
  unsigned int desired_rate;
  long actual_rate;

  error = of_property_read_u32(pdev->dev.of_node,
          "clock-frequency", &desired_rate);
  if (error < 0)
   desired_rate = DEFAULT_CLK_HZ;

  actual_rate = clk_round_rate(kp->clk, desired_rate);
  if (actual_rate <= 0)
   return -EINVAL;

  error = clk_set_rate(kp->clk, actual_rate);
  if (error)
   return error;

  error = clk_prepare_enable(kp->clk);
  if (error)
   return error;
 }


 bcm_kp_stop(kp);

 kp->irq = platform_get_irq(pdev, 0);
 if (kp->irq < 0)
  return -EINVAL;

 error = devm_request_threaded_irq(&pdev->dev, kp->irq,
       ((void*)0), bcm_kp_isr_thread,
       IRQF_ONESHOT, pdev->name, kp);
 if (error) {
  dev_err(&pdev->dev, "failed to request IRQ\n");
  return error;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to register input device\n");
  return error;
 }

 return 0;
}
