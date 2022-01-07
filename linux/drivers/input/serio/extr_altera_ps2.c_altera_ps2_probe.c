
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int type; } ;
struct serio {TYPE_2__ dev; struct ps2if* port_data; int phys; int name; int close; int open; int write; TYPE_1__ id; } ;
struct resource {int dummy; } ;
struct ps2if {struct serio* io; int base; } ;
struct platform_device {int dev; int name; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SERIO_8042 ;
 int altera_ps2_close ;
 int altera_ps2_open ;
 int altera_ps2_rxint ;
 int altera_ps2_write ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int) ;
 int dev_name (int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct ps2if* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct ps2if*) ;
 struct serio* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ps2if*) ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int altera_ps2_probe(struct platform_device *pdev)
{
 struct ps2if *ps2if;
 struct resource *res;
 struct serio *serio;
 int error, irq;

 ps2if = devm_kzalloc(&pdev->dev, sizeof(struct ps2if), GFP_KERNEL);
 if (!ps2if)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ps2if->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ps2if->base))
  return PTR_ERR(ps2if->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -ENXIO;

 error = devm_request_irq(&pdev->dev, irq, altera_ps2_rxint, 0,
     pdev->name, ps2if);
 if (error) {
  dev_err(&pdev->dev, "could not request IRQ %d\n", irq);
  return error;
 }

 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!serio)
  return -ENOMEM;

 serio->id.type = SERIO_8042;
 serio->write = altera_ps2_write;
 serio->open = altera_ps2_open;
 serio->close = altera_ps2_close;
 strlcpy(serio->name, dev_name(&pdev->dev), sizeof(serio->name));
 strlcpy(serio->phys, dev_name(&pdev->dev), sizeof(serio->phys));
 serio->port_data = ps2if;
 serio->dev.parent = &pdev->dev;
 ps2if->io = serio;

 dev_info(&pdev->dev, "base %p, irq %d\n", ps2if->base, irq);

 serio_register_port(ps2if->io);
 platform_set_drvdata(pdev, ps2if);

 return 0;
}
