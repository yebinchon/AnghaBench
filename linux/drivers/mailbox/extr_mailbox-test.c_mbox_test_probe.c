
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mbox_test_device {int waitq; void* rx_buffer; void* rx_channel; int lock; int * dev; void* tx_channel; int * tx_mmio; int * rx_mmio; } ;
typedef int resource_size_t ;


 int EBUSY ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int MBOX_MAX_MSG_LEN ;
 int PTR_ERR (int *) ;
 int dev_info (int *,char*) ;
 void* devm_ioremap (int *,int ,int ) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mbox_test_add_debugfs (struct platform_device*,struct mbox_test_device*) ;
 void* mbox_test_request_channel (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct mbox_test_device*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mbox_test_probe(struct platform_device *pdev)
{
 struct mbox_test_device *tdev;
 struct resource *res;
 resource_size_t size;
 int ret;

 tdev = devm_kzalloc(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
 if (!tdev)
  return -ENOMEM;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 tdev->tx_mmio = devm_ioremap_resource(&pdev->dev, res);
 if (PTR_ERR(tdev->tx_mmio) == -EBUSY) {

  size = resource_size(res);
  tdev->tx_mmio = devm_ioremap(&pdev->dev, res->start, size);
 } else if (IS_ERR(tdev->tx_mmio)) {
  tdev->tx_mmio = ((void*)0);
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 tdev->rx_mmio = devm_ioremap_resource(&pdev->dev, res);
 if (PTR_ERR(tdev->rx_mmio) == -EBUSY) {
  size = resource_size(res);
  tdev->rx_mmio = devm_ioremap(&pdev->dev, res->start, size);
 } else if (IS_ERR(tdev->rx_mmio)) {
  tdev->rx_mmio = tdev->tx_mmio;
 }

 tdev->tx_channel = mbox_test_request_channel(pdev, "tx");
 tdev->rx_channel = mbox_test_request_channel(pdev, "rx");

 if (!tdev->tx_channel && !tdev->rx_channel)
  return -EPROBE_DEFER;


 if (!tdev->rx_channel && (tdev->rx_mmio != tdev->tx_mmio))
  tdev->rx_channel = tdev->tx_channel;

 tdev->dev = &pdev->dev;
 platform_set_drvdata(pdev, tdev);

 spin_lock_init(&tdev->lock);

 if (tdev->rx_channel) {
  tdev->rx_buffer = devm_kzalloc(&pdev->dev,
            MBOX_MAX_MSG_LEN, GFP_KERNEL);
  if (!tdev->rx_buffer)
   return -ENOMEM;
 }

 ret = mbox_test_add_debugfs(pdev, tdev);
 if (ret)
  return ret;

 init_waitqueue_head(&tdev->waitq);
 dev_info(&pdev->dev, "Successfully registered\n");

 return 0;
}
