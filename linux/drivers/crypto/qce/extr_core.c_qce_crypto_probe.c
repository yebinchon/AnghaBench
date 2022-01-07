
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {void* core; void* iface; void* bus; int dma; int async_req_done; int async_req_enqueue; int queue; int done_tasklet; int lock; struct device* dev; void* base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int QCE_QUEUE_LENGTH ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int crypto_init_queue (int *,int ) ;
 void* devm_clk_get (struct device*,char*) ;
 struct qce_device* devm_kzalloc (struct device*,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct qce_device*) ;
 int qce_async_request_done ;
 int qce_async_request_enqueue ;
 int qce_check_version (struct qce_device*) ;
 int qce_dma_release (int *) ;
 int qce_dma_request (struct device*,int *) ;
 int qce_register_algs (struct qce_device*) ;
 int qce_tasklet_req_done ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int qce_crypto_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct qce_device *qce;
 int ret;

 qce = devm_kzalloc(dev, sizeof(*qce), GFP_KERNEL);
 if (!qce)
  return -ENOMEM;

 qce->dev = dev;
 platform_set_drvdata(pdev, qce);

 qce->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(qce->base))
  return PTR_ERR(qce->base);

 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
 if (ret < 0)
  return ret;

 qce->core = devm_clk_get(qce->dev, "core");
 if (IS_ERR(qce->core))
  return PTR_ERR(qce->core);

 qce->iface = devm_clk_get(qce->dev, "iface");
 if (IS_ERR(qce->iface))
  return PTR_ERR(qce->iface);

 qce->bus = devm_clk_get(qce->dev, "bus");
 if (IS_ERR(qce->bus))
  return PTR_ERR(qce->bus);

 ret = clk_prepare_enable(qce->core);
 if (ret)
  return ret;

 ret = clk_prepare_enable(qce->iface);
 if (ret)
  goto err_clks_core;

 ret = clk_prepare_enable(qce->bus);
 if (ret)
  goto err_clks_iface;

 ret = qce_dma_request(qce->dev, &qce->dma);
 if (ret)
  goto err_clks;

 ret = qce_check_version(qce);
 if (ret)
  goto err_clks;

 spin_lock_init(&qce->lock);
 tasklet_init(&qce->done_tasklet, qce_tasklet_req_done,
       (unsigned long)qce);
 crypto_init_queue(&qce->queue, QCE_QUEUE_LENGTH);

 qce->async_req_enqueue = qce_async_request_enqueue;
 qce->async_req_done = qce_async_request_done;

 ret = qce_register_algs(qce);
 if (ret)
  goto err_dma;

 return 0;

err_dma:
 qce_dma_release(&qce->dma);
err_clks:
 clk_disable_unprepare(qce->bus);
err_clks_iface:
 clk_disable_unprepare(qce->iface);
err_clks_core:
 clk_disable_unprepare(qce->core);
 return ret;
}
