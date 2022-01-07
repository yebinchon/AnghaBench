
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int type; } ;
struct serio {int phys; int name; TYPE_2__ dev; struct ps2_gpio_data* port_data; int * write; int close; int open; TYPE_1__ id; } ;
struct ps2_gpio_data {int irq; int tx_cnt; int tx_mutex; int tx_done; int tx_work; int mode; struct device* dev; struct serio* serio; scalar_t__ write_enable; int gpio_clk; int gpio_data; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_NO_THREAD ;
 int PS2_MODE_RX ;
 int SERIO_8042 ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 struct ps2_gpio_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct ps2_gpio_data*) ;
 int disable_irq (int) ;
 scalar_t__ gpiod_cansleep (int ) ;
 int init_completion (int *) ;
 int kfree (struct serio*) ;
 struct serio* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ps2_gpio_data*) ;
 int ps2_gpio_close ;
 int ps2_gpio_get_props (struct device*,struct ps2_gpio_data*) ;
 int ps2_gpio_irq ;
 int ps2_gpio_open ;
 int ps2_gpio_tx_work_fn ;
 int * ps2_gpio_write ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int ps2_gpio_probe(struct platform_device *pdev)
{
 struct ps2_gpio_data *drvdata;
 struct serio *serio;
 struct device *dev = &pdev->dev;
 int error;

 drvdata = devm_kzalloc(dev, sizeof(struct ps2_gpio_data), GFP_KERNEL);
 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!drvdata || !serio) {
  error = -ENOMEM;
  goto err_free_serio;
 }

 error = ps2_gpio_get_props(dev, drvdata);
 if (error)
  goto err_free_serio;

 if (gpiod_cansleep(drvdata->gpio_data) ||
     gpiod_cansleep(drvdata->gpio_clk)) {
  dev_err(dev, "GPIO data or clk are connected via slow bus\n");
  error = -EINVAL;
  goto err_free_serio;
 }

 drvdata->irq = platform_get_irq(pdev, 0);
 if (drvdata->irq < 0) {
  error = drvdata->irq;
  goto err_free_serio;
 }

 error = devm_request_irq(dev, drvdata->irq, ps2_gpio_irq,
     IRQF_NO_THREAD, DRIVER_NAME, drvdata);
 if (error) {
  dev_err(dev, "failed to request irq %d: %d\n",
   drvdata->irq, error);
  goto err_free_serio;
 }


 disable_irq(drvdata->irq);

 serio->id.type = SERIO_8042;
 serio->open = ps2_gpio_open;
 serio->close = ps2_gpio_close;



 serio->write = drvdata->write_enable ? ps2_gpio_write : ((void*)0);
 serio->port_data = drvdata;
 serio->dev.parent = dev;
 strlcpy(serio->name, dev_name(dev), sizeof(serio->name));
 strlcpy(serio->phys, dev_name(dev), sizeof(serio->phys));

 drvdata->serio = serio;
 drvdata->dev = dev;
 drvdata->mode = PS2_MODE_RX;




 drvdata->tx_cnt = 1;

 INIT_DELAYED_WORK(&drvdata->tx_work, ps2_gpio_tx_work_fn);
 init_completion(&drvdata->tx_done);
 mutex_init(&drvdata->tx_mutex);

 serio_register_port(serio);
 platform_set_drvdata(pdev, drvdata);

 return 0;

err_free_serio:
 kfree(serio);
 return error;
}
