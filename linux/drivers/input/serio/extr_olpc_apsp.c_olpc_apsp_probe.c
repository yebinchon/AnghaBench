
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int type; } ;
struct serio {int phys; int name; TYPE_2__ dev; struct olpc_apsp* port_data; void* close; void* open; void* write; TYPE_1__ id; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct olpc_apsp {scalar_t__ irq; int * dev; struct serio* padio; struct serio* kbio; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SERIO_8042 ;
 int SERIO_8042_XL ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct olpc_apsp* devm_kzalloc (int *,int,int ) ;
 struct serio* kzalloc (int,int ) ;
 void* olpc_apsp_close ;
 void* olpc_apsp_open ;
 int olpc_apsp_rx ;
 void* olpc_apsp_write ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct olpc_apsp*) ;
 int request_irq (int,int ,int ,char*,struct olpc_apsp*) ;
 int serio_register_port (struct serio*) ;
 int serio_unregister_port (struct serio*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int olpc_apsp_probe(struct platform_device *pdev)
{
 struct serio *kb_serio, *pad_serio;
 struct olpc_apsp *priv;
 struct resource *res;
 int error;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct olpc_apsp), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base)) {
  dev_err(&pdev->dev, "Failed to map WTM registers\n");
  return PTR_ERR(priv->base);
 }

 priv->irq = platform_get_irq(pdev, 0);
 if (priv->irq < 0)
  return priv->irq;


 kb_serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!kb_serio)
  return -ENOMEM;
 kb_serio->id.type = SERIO_8042_XL;
 kb_serio->write = olpc_apsp_write;
 kb_serio->open = olpc_apsp_open;
 kb_serio->close = olpc_apsp_close;
 kb_serio->port_data = priv;
 kb_serio->dev.parent = &pdev->dev;
 strlcpy(kb_serio->name, "sp keyboard", sizeof(kb_serio->name));
 strlcpy(kb_serio->phys, "sp/serio0", sizeof(kb_serio->phys));
 priv->kbio = kb_serio;
 serio_register_port(kb_serio);


 pad_serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!pad_serio) {
  error = -ENOMEM;
  goto err_pad;
 }
 pad_serio->id.type = SERIO_8042;
 pad_serio->write = olpc_apsp_write;
 pad_serio->open = olpc_apsp_open;
 pad_serio->close = olpc_apsp_close;
 pad_serio->port_data = priv;
 pad_serio->dev.parent = &pdev->dev;
 strlcpy(pad_serio->name, "sp touchpad", sizeof(pad_serio->name));
 strlcpy(pad_serio->phys, "sp/serio1", sizeof(pad_serio->phys));
 priv->padio = pad_serio;
 serio_register_port(pad_serio);

 error = request_irq(priv->irq, olpc_apsp_rx, 0, "olpc-apsp", priv);
 if (error) {
  dev_err(&pdev->dev, "Failed to request IRQ\n");
  goto err_irq;
 }

 device_init_wakeup(priv->dev, 1);
 platform_set_drvdata(pdev, priv);

 dev_dbg(&pdev->dev, "probed successfully.\n");
 return 0;

err_irq:
 serio_unregister_port(pad_serio);
err_pad:
 serio_unregister_port(kb_serio);
 return error;
}
