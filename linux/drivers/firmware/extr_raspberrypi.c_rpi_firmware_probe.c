
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_block; int rx_callback; struct device* dev; } ;
struct rpi_firmware {int c; int chan; TYPE_1__ cl; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct rpi_firmware* devm_kzalloc (struct device*,int,int ) ;
 int init_completion (int *) ;
 int mbox_request_channel (TYPE_1__*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rpi_firmware*) ;
 int response_callback ;
 int rpi_firmware_print_firmware_revision (struct rpi_firmware*) ;
 int rpi_register_clk_driver (struct device*) ;
 int rpi_register_hwmon_driver (struct device*,struct rpi_firmware*) ;

__attribute__((used)) static int rpi_firmware_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rpi_firmware *fw;

 fw = devm_kzalloc(dev, sizeof(*fw), GFP_KERNEL);
 if (!fw)
  return -ENOMEM;

 fw->cl.dev = dev;
 fw->cl.rx_callback = response_callback;
 fw->cl.tx_block = 1;

 fw->chan = mbox_request_channel(&fw->cl, 0);
 if (IS_ERR(fw->chan)) {
  int ret = PTR_ERR(fw->chan);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get mbox channel: %d\n", ret);
  return ret;
 }

 init_completion(&fw->c);

 platform_set_drvdata(pdev, fw);

 rpi_firmware_print_firmware_revision(fw);
 rpi_register_hwmon_driver(dev, fw);
 rpi_register_clk_driver(dev);

 return 0;
}
