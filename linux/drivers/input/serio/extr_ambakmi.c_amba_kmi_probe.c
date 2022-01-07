
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int type; } ;
struct serio {int base; struct serio* io; int irq; int clk; TYPE_2__ dev; struct serio* port_data; int phys; int name; int close; int open; int write; TYPE_1__ id; } ;
struct amba_kmi_port {int base; struct amba_kmi_port* io; int irq; int clk; TYPE_2__ dev; struct amba_kmi_port* port_data; int phys; int name; int close; int open; int write; TYPE_1__ id; } ;
struct amba_id {int dummy; } ;
struct TYPE_6__ {int start; } ;
struct amba_device {int * irq; int dev; TYPE_3__ res; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SERIO_8042 ;
 int amba_kmi_close ;
 int amba_kmi_open ;
 int amba_kmi_write ;
 int amba_release_regions (struct amba_device*) ;
 int amba_request_regions (struct amba_device*,int *) ;
 int amba_set_drvdata (struct amba_device*,struct serio*) ;
 int clk_get (int *,char*) ;
 int dev_name (int *) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct serio*) ;
 struct serio* kzalloc (int,int ) ;
 int resource_size (TYPE_3__*) ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int amba_kmi_probe(struct amba_device *dev,
 const struct amba_id *id)
{
 struct amba_kmi_port *kmi;
 struct serio *io;
 int ret;

 ret = amba_request_regions(dev, ((void*)0));
 if (ret)
  return ret;

 kmi = kzalloc(sizeof(struct amba_kmi_port), GFP_KERNEL);
 io = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!kmi || !io) {
  ret = -ENOMEM;
  goto out;
 }


 io->id.type = SERIO_8042;
 io->write = amba_kmi_write;
 io->open = amba_kmi_open;
 io->close = amba_kmi_close;
 strlcpy(io->name, dev_name(&dev->dev), sizeof(io->name));
 strlcpy(io->phys, dev_name(&dev->dev), sizeof(io->phys));
 io->port_data = kmi;
 io->dev.parent = &dev->dev;

 kmi->io = io;
 kmi->base = ioremap(dev->res.start, resource_size(&dev->res));
 if (!kmi->base) {
  ret = -ENOMEM;
  goto out;
 }

 kmi->clk = clk_get(&dev->dev, "KMIREFCLK");
 if (IS_ERR(kmi->clk)) {
  ret = PTR_ERR(kmi->clk);
  goto unmap;
 }

 kmi->irq = dev->irq[0];
 amba_set_drvdata(dev, kmi);

 serio_register_port(kmi->io);
 return 0;

 unmap:
 iounmap(kmi->base);
 out:
 kfree(kmi);
 kfree(io);
 amba_release_regions(dev);
 return ret;
}
