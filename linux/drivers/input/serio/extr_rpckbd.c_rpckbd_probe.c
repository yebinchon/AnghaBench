
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int type; } ;
struct serio {int rx_irq; int tx_irq; int phys; int name; struct serio* port_data; TYPE_2__ dev; int close; int open; int write; TYPE_1__ id; } ;
struct rpckbd_data {int rx_irq; int tx_irq; int phys; int name; struct rpckbd_data* port_data; TYPE_2__ dev; int close; int open; int write; TYPE_1__ id; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int SERIO_8042 ;
 int kfree (struct serio*) ;
 struct serio* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct serio*) ;
 int rpckbd_close ;
 int rpckbd_open ;
 int rpckbd_write ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int rpckbd_probe(struct platform_device *dev)
{
 struct rpckbd_data *rpckbd;
 struct serio *serio;
 int tx_irq, rx_irq;

 rx_irq = platform_get_irq(dev, 0);
 if (rx_irq <= 0)
  return rx_irq < 0 ? rx_irq : -ENXIO;

 tx_irq = platform_get_irq(dev, 1);
 if (tx_irq <= 0)
  return tx_irq < 0 ? tx_irq : -ENXIO;

 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 rpckbd = kzalloc(sizeof(*rpckbd), GFP_KERNEL);
 if (!serio || !rpckbd) {
  kfree(rpckbd);
  kfree(serio);
  return -ENOMEM;
 }

 rpckbd->rx_irq = rx_irq;
 rpckbd->tx_irq = tx_irq;

 serio->id.type = SERIO_8042;
 serio->write = rpckbd_write;
 serio->open = rpckbd_open;
 serio->close = rpckbd_close;
 serio->dev.parent = &dev->dev;
 serio->port_data = rpckbd;
 strlcpy(serio->name, "RiscPC PS/2 kbd port", sizeof(serio->name));
 strlcpy(serio->phys, "rpckbd/serio0", sizeof(serio->phys));

 platform_set_drvdata(dev, serio);
 serio_register_port(serio);
 return 0;
}
