
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u32 ;
struct serio {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct apbps2_priv {TYPE_2__* io; TYPE_6__* regs; } ;
struct TYPE_16__ {int reload; int ctrl; } ;
struct TYPE_13__ {int type; } ;
struct TYPE_14__ {int phys; int name; struct apbps2_priv* port_data; int write; int close; int open; TYPE_1__ id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_6__*) ;
 int PTR_ERR (TYPE_6__*) ;
 int SERIO_8042 ;
 int apbps2_close ;
 int apbps2_idx ;
 int apbps2_isr ;
 int apbps2_open ;
 int apbps2_write ;
 int dev_err (TYPE_4__*,char*,...) ;
 int dev_info (TYPE_4__*,char*,int,TYPE_6__*) ;
 TYPE_6__* devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct apbps2_priv* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,char*,struct apbps2_priv*) ;
 int iowrite32be (int,int *) ;
 int irq_of_parse_and_map (int ,int ) ;
 TYPE_2__* kzalloc (int,int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct apbps2_priv*) ;
 int serio_register_port (TYPE_2__*) ;
 int snprintf (int ,int,char*,int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int apbps2_of_probe(struct platform_device *ofdev)
{
 struct apbps2_priv *priv;
 int irq, err;
 u32 freq_hz;
 struct resource *res;

 priv = devm_kzalloc(&ofdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  dev_err(&ofdev->dev, "memory allocation failed\n");
  return -ENOMEM;
 }


 res = platform_get_resource(ofdev, IORESOURCE_MEM, 0);
 priv->regs = devm_ioremap_resource(&ofdev->dev, res);
 if (IS_ERR(priv->regs))
  return PTR_ERR(priv->regs);


 iowrite32be(0, &priv->regs->ctrl);


 irq = irq_of_parse_and_map(ofdev->dev.of_node, 0);
 err = devm_request_irq(&ofdev->dev, irq, apbps2_isr,
    IRQF_SHARED, "apbps2", priv);
 if (err) {
  dev_err(&ofdev->dev, "request IRQ%d failed\n", irq);
  return err;
 }


 if (of_property_read_u32(ofdev->dev.of_node, "freq", &freq_hz)) {
  dev_err(&ofdev->dev, "unable to get core frequency\n");
  return -EINVAL;
 }


 iowrite32be(freq_hz / 10000, &priv->regs->reload);

 priv->io = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!priv->io)
  return -ENOMEM;

 priv->io->id.type = SERIO_8042;
 priv->io->open = apbps2_open;
 priv->io->close = apbps2_close;
 priv->io->write = apbps2_write;
 priv->io->port_data = priv;
 strlcpy(priv->io->name, "APBPS2 PS/2", sizeof(priv->io->name));
 snprintf(priv->io->phys, sizeof(priv->io->phys),
   "apbps2_%d", apbps2_idx++);

 dev_info(&ofdev->dev, "irq = %d, base = 0x%p\n", irq, priv->regs);

 serio_register_port(priv->io);

 platform_set_drvdata(ofdev, priv);

 return 0;
}
