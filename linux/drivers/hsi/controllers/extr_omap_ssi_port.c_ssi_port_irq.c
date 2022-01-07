
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_ssi_port {int irq; } ;
struct hsi_port {int device; } ;


 int IRQF_ONESHOT ;
 int dev_err (int *,char*,int,int) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,char*,struct hsi_port*) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int ssi_pio_thread ;

__attribute__((used)) static int ssi_port_irq(struct hsi_port *port, struct platform_device *pd)
{
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 int err;

 err = platform_get_irq(pd, 0);
 if (err < 0)
  return err;
 omap_port->irq = err;
 err = devm_request_threaded_irq(&port->device, omap_port->irq, ((void*)0),
    ssi_pio_thread, IRQF_ONESHOT, "SSI PORT", port);
 if (err < 0)
  dev_err(&port->device, "Request IRQ %d failed (%d)\n",
       omap_port->irq, err);
 return err;
}
