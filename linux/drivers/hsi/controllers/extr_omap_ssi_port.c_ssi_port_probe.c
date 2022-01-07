
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_9__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_ssi_port {size_t port_id; TYPE_1__* pdev; int * dev; int wk_lock; int lock; int ssr_dma; int ssr_base; int sst_dma; int sst_base; int work; int errqueue_work; struct gpio_desc* wake_gpio; } ;
struct omap_ssi_controller {int dir; struct omap_ssi_port** port; } ;
struct hsi_port {int device; int release; int stop_tx; int start_tx; int flush; int setup; int async; } ;
struct hsi_controller {size_t num_ports; struct hsi_port** port; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct hsi_controller* dev_get_drvdata (int ) ;
 int dev_info (TYPE_1__*,char*,size_t) ;
 struct gpio_desc* devm_gpiod_get (TYPE_1__*,char*,int ) ;
 struct omap_ssi_port* devm_kzalloc (int *,int,int ) ;
 int hsi_add_clients_from_dt (struct hsi_port*,struct device_node*) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 int hsi_port_set_drvdata (struct hsi_port*,struct omap_ssi_port*) ;
 int platform_set_drvdata (struct platform_device*,struct hsi_port*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int ssi_async ;
 int ssi_debug_add_port (struct omap_ssi_port*,int ) ;
 int ssi_flush ;
 int ssi_port_get_iomem (struct platform_device*,char*,int *,int *) ;
 int ssi_port_irq (struct hsi_port*,struct platform_device*) ;
 int ssi_process_errqueue ;
 int ssi_queues_init (struct omap_ssi_port*) ;
 int ssi_release ;
 int ssi_setup ;
 int ssi_start_tx ;
 int ssi_stop_tx ;
 int ssi_wake_irq (struct hsi_port*,struct platform_device*) ;
 int start_tx_work ;

__attribute__((used)) static int ssi_port_probe(struct platform_device *pd)
{
 struct device_node *np = pd->dev.of_node;
 struct hsi_port *port;
 struct omap_ssi_port *omap_port;
 struct hsi_controller *ssi = dev_get_drvdata(pd->dev.parent);
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 struct gpio_desc *cawake_gpio = ((void*)0);
 u32 port_id;
 int err;

 dev_dbg(&pd->dev, "init ssi port...\n");

 if (!ssi->port || !omap_ssi->port) {
  dev_err(&pd->dev, "ssi controller not initialized!\n");
  err = -ENODEV;
  goto error;
 }


 for (port_id = 0; port_id < ssi->num_ports && omap_ssi->port[port_id];
  port_id++)
  ;

 if (port_id >= ssi->num_ports) {
  dev_err(&pd->dev, "port id out of range!\n");
  err = -ENODEV;
  goto error;
 }

 port = ssi->port[port_id];

 if (!np) {
  dev_err(&pd->dev, "missing device tree data\n");
  err = -EINVAL;
  goto error;
 }

 cawake_gpio = devm_gpiod_get(&pd->dev, "ti,ssi-cawake", GPIOD_IN);
 if (IS_ERR(cawake_gpio)) {
  err = PTR_ERR(cawake_gpio);
  dev_err(&pd->dev, "couldn't get cawake gpio (err=%d)!\n", err);
  goto error;
 }

 omap_port = devm_kzalloc(&port->device, sizeof(*omap_port), GFP_KERNEL);
 if (!omap_port) {
  err = -ENOMEM;
  goto error;
 }
 omap_port->wake_gpio = cawake_gpio;
 omap_port->pdev = &pd->dev;
 omap_port->port_id = port_id;

 INIT_DEFERRABLE_WORK(&omap_port->errqueue_work, ssi_process_errqueue);
 INIT_WORK(&omap_port->work, start_tx_work);


 port->async = ssi_async;
 port->setup = ssi_setup;
 port->flush = ssi_flush;
 port->start_tx = ssi_start_tx;
 port->stop_tx = ssi_stop_tx;
 port->release = ssi_release;
 hsi_port_set_drvdata(port, omap_port);
 omap_ssi->port[port_id] = omap_port;

 platform_set_drvdata(pd, port);

 err = ssi_port_get_iomem(pd, "tx", &omap_port->sst_base,
  &omap_port->sst_dma);
 if (err < 0)
  goto error;
 err = ssi_port_get_iomem(pd, "rx", &omap_port->ssr_base,
  &omap_port->ssr_dma);
 if (err < 0)
  goto error;

 err = ssi_port_irq(port, pd);
 if (err < 0)
  goto error;
 err = ssi_wake_irq(port, pd);
 if (err < 0)
  goto error;

 ssi_queues_init(omap_port);
 spin_lock_init(&omap_port->lock);
 spin_lock_init(&omap_port->wk_lock);
 omap_port->dev = &port->device;

 pm_runtime_use_autosuspend(omap_port->pdev);
 pm_runtime_set_autosuspend_delay(omap_port->pdev, 250);
 pm_runtime_enable(omap_port->pdev);
 hsi_add_clients_from_dt(port, np);

 dev_info(&pd->dev, "ssi port %u successfully initialized\n", port_id);

 return 0;

error:
 return err;
}
