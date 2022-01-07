
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_fpga_priv {scalar_t__ irq; int clk; int dma_done; int slcr; int io_base; int dma_lock; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_STS_OFFSET ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int IXR_ALL_MASK ;
 int PTR_ERR (int ) ;
 int UNLOCK_MASK ;
 int UNLOCK_OFFSET ;
 int clk_disable (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,char*) ;
 struct fpga_manager* devm_fpga_mgr_create (struct device*,char*,int *,struct zynq_fpga_priv*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct zynq_fpga_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct zynq_fpga_priv*) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 int init_completion (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_manager*) ;
 int spin_lock_init (int *) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;
 int zynq_fpga_isr ;
 int zynq_fpga_ops ;
 int zynq_fpga_set_irq (struct zynq_fpga_priv*,int ) ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int ) ;

__attribute__((used)) static int zynq_fpga_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct zynq_fpga_priv *priv;
 struct fpga_manager *mgr;
 struct resource *res;
 int err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 spin_lock_init(&priv->dma_lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->io_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->io_base))
  return PTR_ERR(priv->io_base);

 priv->slcr = syscon_regmap_lookup_by_phandle(dev->of_node,
  "syscon");
 if (IS_ERR(priv->slcr)) {
  dev_err(dev, "unable to get zynq-slcr regmap\n");
  return PTR_ERR(priv->slcr);
 }

 init_completion(&priv->dma_done);

 priv->irq = platform_get_irq(pdev, 0);
 if (priv->irq < 0) {
  dev_err(dev, "No IRQ available\n");
  return priv->irq;
 }

 priv->clk = devm_clk_get(dev, "ref_clk");
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "input clock not found\n");
  return PTR_ERR(priv->clk);
 }

 err = clk_prepare_enable(priv->clk);
 if (err) {
  dev_err(dev, "unable to enable clock\n");
  return err;
 }


 zynq_fpga_write(priv, UNLOCK_OFFSET, UNLOCK_MASK);

 zynq_fpga_set_irq(priv, 0);
 zynq_fpga_write(priv, INT_STS_OFFSET, IXR_ALL_MASK);
 err = devm_request_irq(dev, priv->irq, zynq_fpga_isr, 0, dev_name(dev),
          priv);
 if (err) {
  dev_err(dev, "unable to request IRQ\n");
  clk_disable_unprepare(priv->clk);
  return err;
 }

 clk_disable(priv->clk);

 mgr = devm_fpga_mgr_create(dev, "Xilinx Zynq FPGA Manager",
       &zynq_fpga_ops, priv);
 if (!mgr)
  return -ENOMEM;

 platform_set_drvdata(pdev, mgr);

 err = fpga_mgr_register(mgr);
 if (err) {
  dev_err(dev, "unable to register FPGA manager\n");
  clk_unprepare(priv->clk);
  return err;
 }

 return 0;
}
