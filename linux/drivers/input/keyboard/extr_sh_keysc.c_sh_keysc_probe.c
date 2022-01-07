
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_keysc_info {size_t mode; int scan_timing; int * keycodes; } ;
struct sh_keysc_priv {int * iomem_base; struct input_dev* input; struct sh_keysc_info pdata; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_5__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_4__ {int * parent; } ;
struct input_dev {char* phys; int keycodesize; int keybit; int keycodemax; int * keycode; TYPE_2__ id; TYPE_1__ dev; int name; int * evbit; } ;
struct TYPE_6__ {int kymd; } ;


 int ARRAY_SIZE (int *) ;
 int BIT_MASK (int ) ;
 int BUS_HOST ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 int KEY_RESERVED ;
 int KYCR1 ;
 int SH_KEYSC_MAXKEYS ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 int dev_get_platdata (int *) ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 int free_irq (int,struct platform_device*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int * ioremap_nocache (int ,int ) ;
 int iounmap (int *) ;
 int kfree (struct sh_keysc_priv*) ;
 struct sh_keysc_priv* kzalloc (int,int ) ;
 int memcpy (struct sh_keysc_info*,int ,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_keysc_priv*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int request_threaded_irq (int,int *,int ,int ,int ,struct platform_device*) ;
 int resource_size (struct resource*) ;
 int sh_keysc_isr ;
 int sh_keysc_level_mode (struct sh_keysc_priv*,int ) ;
 TYPE_3__* sh_keysc_mode ;
 int sh_keysc_write (struct sh_keysc_priv*,int ,int) ;

__attribute__((used)) static int sh_keysc_probe(struct platform_device *pdev)
{
 struct sh_keysc_priv *priv;
 struct sh_keysc_info *pdata;
 struct resource *res;
 struct input_dev *input;
 int i;
 int irq, error;

 if (!dev_get_platdata(&pdev->dev)) {
  dev_err(&pdev->dev, "no platform data defined\n");
  error = -EINVAL;
  goto err0;
 }

 error = -ENXIO;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "failed to get I/O memory\n");
  goto err0;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  goto err0;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate driver data\n");
  error = -ENOMEM;
  goto err0;
 }

 platform_set_drvdata(pdev, priv);
 memcpy(&priv->pdata, dev_get_platdata(&pdev->dev), sizeof(priv->pdata));
 pdata = &priv->pdata;

 priv->iomem_base = ioremap_nocache(res->start, resource_size(res));
 if (priv->iomem_base == ((void*)0)) {
  dev_err(&pdev->dev, "failed to remap I/O memory\n");
  error = -ENXIO;
  goto err1;
 }

 priv->input = input_allocate_device();
 if (!priv->input) {
  dev_err(&pdev->dev, "failed to allocate input device\n");
  error = -ENOMEM;
  goto err2;
 }

 input = priv->input;
 input->evbit[0] = BIT_MASK(EV_KEY);

 input->name = pdev->name;
 input->phys = "sh-keysc-keys/input0";
 input->dev.parent = &pdev->dev;

 input->id.bustype = BUS_HOST;
 input->id.vendor = 0x0001;
 input->id.product = 0x0001;
 input->id.version = 0x0100;

 input->keycode = pdata->keycodes;
 input->keycodesize = sizeof(pdata->keycodes[0]);
 input->keycodemax = ARRAY_SIZE(pdata->keycodes);

 error = request_threaded_irq(irq, ((void*)0), sh_keysc_isr, IRQF_ONESHOT,
         dev_name(&pdev->dev), pdev);
 if (error) {
  dev_err(&pdev->dev, "failed to request IRQ\n");
  goto err3;
 }

 for (i = 0; i < SH_KEYSC_MAXKEYS; i++)
  __set_bit(pdata->keycodes[i], input->keybit);
 __clear_bit(KEY_RESERVED, input->keybit);

 error = input_register_device(input);
 if (error) {
  dev_err(&pdev->dev, "failed to register input device\n");
  goto err4;
 }

 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 sh_keysc_write(priv, KYCR1, (sh_keysc_mode[pdata->mode].kymd << 8) |
         pdata->scan_timing);
 sh_keysc_level_mode(priv, 0);

 device_init_wakeup(&pdev->dev, 1);

 return 0;

 err4:
 free_irq(irq, pdev);
 err3:
 input_free_device(input);
 err2:
 iounmap(priv->iomem_base);
 err1:
 kfree(priv);
 err0:
 return error;
}
