
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct resource {unsigned long start; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ipu_soc {scalar_t__ id; int irq_sync; int irq_err; int clk; TYPE_1__* dev; void* idmac_reg; void* cm_reg; int channels; int channel_lock; int lock; int ipu_type; struct ipu_devtype const* devtype; int prg_priv; } ;
struct ipu_devtype {unsigned long cm_ofs; unsigned long cpmem_ofs; unsigned long csi0_ofs; unsigned long csi1_ofs; unsigned long ic_ofs; unsigned long disp0_ofs; unsigned long disp1_ofs; unsigned long srm_ofs; unsigned long tpm_ofs; unsigned long vdi_ofs; int name; int type; } ;
struct device_node {int dummy; } ;


 int CONFIG_DRM ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 unsigned long IPU_CM_DC_REG_OFS ;
 unsigned long IPU_CM_DMFC_REG_OFS ;
 unsigned long IPU_CM_IC_REG_OFS ;
 unsigned long IPU_CM_IDMAC_REG_OFS ;
 int IPU_DISP_GEN ;
 int IPU_MCU_T_DEFAULT ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_1__*,char*,unsigned long,...) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int device_reset (TYPE_1__*) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 void* devm_ioremap (TYPE_1__*,unsigned long,int ) ;
 struct ipu_soc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int ipu_add_client_devices (struct ipu_soc*,unsigned long) ;
 int ipu_cm_write (struct ipu_soc*,int,int ) ;
 int ipu_irq_exit (struct ipu_soc*) ;
 int ipu_irq_init (struct ipu_soc*) ;
 int ipu_memory_reset (struct ipu_soc*) ;
 int ipu_prg_lookup_by_phandle (TYPE_1__*,char*,scalar_t__) ;
 int ipu_submodules_exit (struct ipu_soc*) ;
 int ipu_submodules_init (struct ipu_soc*,struct platform_device*,unsigned long,int ) ;
 int mutex_init (int *) ;
 scalar_t__ of_alias_get_id (struct device_node*,char*) ;
 struct ipu_devtype* of_device_get_match_data (TYPE_1__*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ipu_soc*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ipu_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct ipu_soc *ipu;
 struct resource *res;
 unsigned long ipu_base;
 int ret, irq_sync, irq_err;
 const struct ipu_devtype *devtype;

 devtype = of_device_get_match_data(&pdev->dev);
 if (!devtype)
  return -EINVAL;

 irq_sync = platform_get_irq(pdev, 0);
 irq_err = platform_get_irq(pdev, 1);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 dev_dbg(&pdev->dev, "irq_sync: %d irq_err: %d\n",
   irq_sync, irq_err);

 if (!res || irq_sync < 0 || irq_err < 0)
  return -ENODEV;

 ipu_base = res->start;

 ipu = devm_kzalloc(&pdev->dev, sizeof(*ipu), GFP_KERNEL);
 if (!ipu)
  return -ENODEV;

 ipu->id = of_alias_get_id(np, "ipu");
 if (ipu->id < 0)
  ipu->id = 0;

 if (of_device_is_compatible(np, "fsl,imx6qp-ipu") &&
     IS_ENABLED(CONFIG_DRM)) {
  ipu->prg_priv = ipu_prg_lookup_by_phandle(&pdev->dev,
         "fsl,prg", ipu->id);
  if (!ipu->prg_priv)
   return -EPROBE_DEFER;
 }

 ipu->devtype = devtype;
 ipu->ipu_type = devtype->type;

 spin_lock_init(&ipu->lock);
 mutex_init(&ipu->channel_lock);
 INIT_LIST_HEAD(&ipu->channels);

 dev_dbg(&pdev->dev, "cm_reg:   0x%08lx\n",
   ipu_base + devtype->cm_ofs);
 dev_dbg(&pdev->dev, "idmac:    0x%08lx\n",
   ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS);
 dev_dbg(&pdev->dev, "cpmem:    0x%08lx\n",
   ipu_base + devtype->cpmem_ofs);
 dev_dbg(&pdev->dev, "csi0:    0x%08lx\n",
   ipu_base + devtype->csi0_ofs);
 dev_dbg(&pdev->dev, "csi1:    0x%08lx\n",
   ipu_base + devtype->csi1_ofs);
 dev_dbg(&pdev->dev, "ic:      0x%08lx\n",
   ipu_base + devtype->ic_ofs);
 dev_dbg(&pdev->dev, "disp0:    0x%08lx\n",
   ipu_base + devtype->disp0_ofs);
 dev_dbg(&pdev->dev, "disp1:    0x%08lx\n",
   ipu_base + devtype->disp1_ofs);
 dev_dbg(&pdev->dev, "srm:      0x%08lx\n",
   ipu_base + devtype->srm_ofs);
 dev_dbg(&pdev->dev, "tpm:      0x%08lx\n",
   ipu_base + devtype->tpm_ofs);
 dev_dbg(&pdev->dev, "dc:       0x%08lx\n",
   ipu_base + devtype->cm_ofs + IPU_CM_DC_REG_OFS);
 dev_dbg(&pdev->dev, "ic:       0x%08lx\n",
   ipu_base + devtype->cm_ofs + IPU_CM_IC_REG_OFS);
 dev_dbg(&pdev->dev, "dmfc:     0x%08lx\n",
   ipu_base + devtype->cm_ofs + IPU_CM_DMFC_REG_OFS);
 dev_dbg(&pdev->dev, "vdi:      0x%08lx\n",
   ipu_base + devtype->vdi_ofs);

 ipu->cm_reg = devm_ioremap(&pdev->dev,
   ipu_base + devtype->cm_ofs, PAGE_SIZE);
 ipu->idmac_reg = devm_ioremap(&pdev->dev,
   ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS,
   PAGE_SIZE);

 if (!ipu->cm_reg || !ipu->idmac_reg)
  return -ENOMEM;

 ipu->clk = devm_clk_get(&pdev->dev, "bus");
 if (IS_ERR(ipu->clk)) {
  ret = PTR_ERR(ipu->clk);
  dev_err(&pdev->dev, "clk_get failed with %d", ret);
  return ret;
 }

 platform_set_drvdata(pdev, ipu);

 ret = clk_prepare_enable(ipu->clk);
 if (ret) {
  dev_err(&pdev->dev, "clk_prepare_enable failed: %d\n", ret);
  return ret;
 }

 ipu->dev = &pdev->dev;
 ipu->irq_sync = irq_sync;
 ipu->irq_err = irq_err;

 ret = device_reset(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to reset: %d\n", ret);
  goto out_failed_reset;
 }
 ret = ipu_memory_reset(ipu);
 if (ret)
  goto out_failed_reset;

 ret = ipu_irq_init(ipu);
 if (ret)
  goto out_failed_irq;


 ipu_cm_write(ipu, 0x00400000L | (IPU_MCU_T_DEFAULT << 18),
   IPU_DISP_GEN);

 ret = ipu_submodules_init(ipu, pdev, ipu_base, ipu->clk);
 if (ret)
  goto failed_submodules_init;

 ret = ipu_add_client_devices(ipu, ipu_base);
 if (ret) {
  dev_err(&pdev->dev, "adding client devices failed with %d\n",
    ret);
  goto failed_add_clients;
 }

 dev_info(&pdev->dev, "%s probed\n", devtype->name);

 return 0;

failed_add_clients:
 ipu_submodules_exit(ipu);
failed_submodules_init:
 ipu_irq_exit(ipu);
out_failed_irq:
out_failed_reset:
 clk_disable_unprepare(ipu->clk);
 return ret;
}
