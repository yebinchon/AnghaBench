
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_ssi_port {int wake_irq; int wake_gpio; } ;
struct hsi_port {int device; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int dev_err (int *,char*,int,int) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct hsi_port*) ;
 int enable_irq_wake (int) ;
 int gpiod_to_irq (int ) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int ssi_wake_thread ;

__attribute__((used)) static int ssi_wake_irq(struct hsi_port *port, struct platform_device *pd)
{
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 int cawake_irq;
 int err;

 if (!omap_port->wake_gpio) {
  omap_port->wake_irq = -1;
  return 0;
 }

 cawake_irq = gpiod_to_irq(omap_port->wake_gpio);
 omap_port->wake_irq = cawake_irq;

 err = devm_request_threaded_irq(&port->device, cawake_irq, ((void*)0),
  ssi_wake_thread,
  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
  "SSI cawake", port);
 if (err < 0)
  dev_err(&port->device, "Request Wake in IRQ %d failed %d\n",
      cawake_irq, err);
 err = enable_irq_wake(cawake_irq);
 if (err < 0)
  dev_err(&port->device, "Enable wake on the wakeline in irq %d failed %d\n",
   cawake_irq, err);

 return err;
}
