
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* parent; } ;
struct TYPE_8__ {int type; } ;
struct serio {int name; TYPE_6__ dev; struct ams_delta_serio* port_data; int phys; int close; int open; TYPE_1__ id; } ;
struct TYPE_9__ {int platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct ams_delta_serio {struct serio* serio; int vcc; int fiq_buffer; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IRQ_TYPE_EDGE_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SERIO_8042 ;
 int ams_delta_serio_close ;
 int ams_delta_serio_interrupt ;
 int ams_delta_serio_open ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_6__*,char*,int ) ;
 char* dev_name (TYPE_2__*) ;
 struct ams_delta_serio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct ams_delta_serio*) ;
 struct serio* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ams_delta_serio*) ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int ams_delta_serio_init(struct platform_device *pdev)
{
 struct ams_delta_serio *priv;
 struct serio *serio;
 int irq, err;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->fiq_buffer = pdev->dev.platform_data;
 if (!priv->fiq_buffer)
  return -EINVAL;

 priv->vcc = devm_regulator_get(&pdev->dev, "vcc");
 if (IS_ERR(priv->vcc)) {
  err = PTR_ERR(priv->vcc);
  dev_err(&pdev->dev, "regulator request failed (%d)\n", err);
  if (err == -ENODEV)
   err = -EPROBE_DEFER;
  return err;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -ENXIO;

 err = devm_request_irq(&pdev->dev, irq, ams_delta_serio_interrupt,
          IRQ_TYPE_EDGE_RISING, DRIVER_NAME, priv);
 if (err < 0) {
  dev_err(&pdev->dev, "IRQ request failed (%d)\n", err);
  return err;
 }

 serio = kzalloc(sizeof(*serio), GFP_KERNEL);
 if (!serio)
  return -ENOMEM;

 priv->serio = serio;

 serio->id.type = SERIO_8042;
 serio->open = ams_delta_serio_open;
 serio->close = ams_delta_serio_close;
 strlcpy(serio->name, "AMS DELTA keyboard adapter", sizeof(serio->name));
 strlcpy(serio->phys, dev_name(&pdev->dev), sizeof(serio->phys));
 serio->dev.parent = &pdev->dev;
 serio->port_data = priv;

 serio_register_port(serio);

 platform_set_drvdata(pdev, priv);

 dev_info(&serio->dev, "%s\n", serio->name);

 return 0;
}
