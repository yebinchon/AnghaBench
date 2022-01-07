
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {int txdone_irq; unsigned int num_chans; TYPE_2__* chans; int * ops; struct device* dev; } ;
struct stm32_ipcc {int proc_id; int* irqs; int wkp; unsigned int n_chans; scalar_t__ clk; TYPE_1__ controller; scalar_t__ reg_base; scalar_t__ reg_proc; int lock; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
typedef int irq_handler_t ;
struct TYPE_4__ {void* con_priv; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FIELD_GET (int ,void*) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IPCC_HWCFGR ;
 unsigned int IPCC_IRQ_NUM ;
 int IPCC_PROC_OFFST ;
 scalar_t__ IPCC_VER ;
 scalar_t__ IPCC_XCR ;
 scalar_t__ IPCC_XMR ;
 unsigned int IPCFGR_CHAN_MASK ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int RX_BIT_MASK ;
 int STM32_MAX_PROCS ;
 int TX_BIT_MASK ;
 int VER_MAJREV_MASK ;
 int VER_MINREV_MASK ;
 int XCR_RXOIE ;
 int XCR_TXOIE ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ,unsigned int,int) ;
 int dev_name (struct device*) ;
 int dev_pm_clear_wake_irq (struct device*) ;
 int dev_pm_set_dedicated_wake_irq (struct device*,int) ;
 int device_init_wakeup (struct device*,int) ;
 int device_set_wakeup_capable (struct device*,int) ;
 scalar_t__ devm_clk_get (struct device*,int *) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 TYPE_2__* devm_kcalloc (struct device*,unsigned int,int,int ) ;
 struct stm32_ipcc* devm_kzalloc (struct device*,int,int ) ;
 int devm_mbox_controller_register (struct device*,TYPE_1__*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct stm32_ipcc*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 void* platform_get_irq_byname (struct platform_device*,char const* const) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_ipcc*) ;
 void* readl_relaxed (scalar_t__) ;
 int spin_lock_init (int *) ;
 int stm32_ipcc_ops ;
 int stm32_ipcc_rx_irq ;
 int stm32_ipcc_set_bits (int *,scalar_t__,int) ;
 int stm32_ipcc_tx_irq ;

__attribute__((used)) static int stm32_ipcc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct stm32_ipcc *ipcc;
 struct resource *res;
 unsigned int i;
 int ret;
 u32 ip_ver;
 static const char * const irq_name[] = {"rx", "tx"};
 irq_handler_t irq_thread[] = {stm32_ipcc_rx_irq, stm32_ipcc_tx_irq};

 if (!np) {
  dev_err(dev, "No DT found\n");
  return -ENODEV;
 }

 ipcc = devm_kzalloc(dev, sizeof(*ipcc), GFP_KERNEL);
 if (!ipcc)
  return -ENOMEM;

 spin_lock_init(&ipcc->lock);


 if (of_property_read_u32(np, "st,proc-id", &ipcc->proc_id)) {
  dev_err(dev, "Missing st,proc-id\n");
  return -ENODEV;
 }

 if (ipcc->proc_id >= STM32_MAX_PROCS) {
  dev_err(dev, "Invalid proc_id (%d)\n", ipcc->proc_id);
  return -EINVAL;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ipcc->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ipcc->reg_base))
  return PTR_ERR(ipcc->reg_base);

 ipcc->reg_proc = ipcc->reg_base + ipcc->proc_id * IPCC_PROC_OFFST;


 ipcc->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ipcc->clk))
  return PTR_ERR(ipcc->clk);

 ret = clk_prepare_enable(ipcc->clk);
 if (ret) {
  dev_err(dev, "can not enable the clock\n");
  return ret;
 }


 for (i = 0; i < IPCC_IRQ_NUM; i++) {
  ipcc->irqs[i] = platform_get_irq_byname(pdev, irq_name[i]);
  if (ipcc->irqs[i] < 0) {
   if (ipcc->irqs[i] != -EPROBE_DEFER)
    dev_err(dev, "no IRQ specified %s\n",
     irq_name[i]);
   ret = ipcc->irqs[i];
   goto err_clk;
  }

  ret = devm_request_threaded_irq(dev, ipcc->irqs[i], ((void*)0),
      irq_thread[i], IRQF_ONESHOT,
      dev_name(dev), ipcc);
  if (ret) {
   dev_err(dev, "failed to request irq %d (%d)\n", i, ret);
   goto err_clk;
  }
 }


 stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
       RX_BIT_MASK | TX_BIT_MASK);
 stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XCR,
       XCR_RXOIE | XCR_TXOIE);


 if (of_property_read_bool(np, "wakeup-source")) {
  ipcc->wkp = platform_get_irq_byname(pdev, "wakeup");
  if (ipcc->wkp < 0) {
   if (ipcc->wkp != -EPROBE_DEFER)
    dev_err(dev, "could not get wakeup IRQ\n");
   ret = ipcc->wkp;
   goto err_clk;
  }

  device_set_wakeup_capable(dev, 1);
  ret = dev_pm_set_dedicated_wake_irq(dev, ipcc->wkp);
  if (ret) {
   dev_err(dev, "Failed to set wake up irq\n");
   goto err_init_wkp;
  }
 }


 ipcc->n_chans = readl_relaxed(ipcc->reg_base + IPCC_HWCFGR);
 ipcc->n_chans &= IPCFGR_CHAN_MASK;

 ipcc->controller.dev = dev;
 ipcc->controller.txdone_irq = 1;
 ipcc->controller.ops = &stm32_ipcc_ops;
 ipcc->controller.num_chans = ipcc->n_chans;
 ipcc->controller.chans = devm_kcalloc(dev, ipcc->controller.num_chans,
           sizeof(*ipcc->controller.chans),
           GFP_KERNEL);
 if (!ipcc->controller.chans) {
  ret = -ENOMEM;
  goto err_irq_wkp;
 }

 for (i = 0; i < ipcc->controller.num_chans; i++)
  ipcc->controller.chans[i].con_priv = (void *)i;

 ret = devm_mbox_controller_register(dev, &ipcc->controller);
 if (ret)
  goto err_irq_wkp;

 platform_set_drvdata(pdev, ipcc);

 ip_ver = readl_relaxed(ipcc->reg_base + IPCC_VER);

 dev_info(dev, "ipcc rev:%ld.%ld enabled, %d chans, proc %d\n",
   FIELD_GET(VER_MAJREV_MASK, ip_ver),
   FIELD_GET(VER_MINREV_MASK, ip_ver),
   ipcc->controller.num_chans, ipcc->proc_id);

 clk_disable_unprepare(ipcc->clk);
 return 0;

err_irq_wkp:
 if (ipcc->wkp)
  dev_pm_clear_wake_irq(dev);
err_init_wkp:
 device_init_wakeup(dev, 0);
err_clk:
 clk_disable_unprepare(ipcc->clk);
 return ret;
}
