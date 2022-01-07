
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nregs; int regs; int base; } ;
struct TYPE_4__ {int base; } ;
struct vc4_txp {TYPE_1__ regset; TYPE_2__ connector; int regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_txp* txp; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct vc4_txp*) ;
 struct vc4_txp* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct vc4_txp*) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_fmts ;
 int drm_writeback_connector_init (struct drm_device*,TYPE_2__*,int *,int *,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int txp_regs ;
 int vc4_debugfs_add_regset32 (struct drm_device*,char*,TYPE_1__*) ;
 int vc4_ioremap_regs (struct platform_device*,int ) ;
 int vc4_txp_connector_funcs ;
 int vc4_txp_connector_helper_funcs ;
 int vc4_txp_encoder_helper_funcs ;
 int vc4_txp_interrupt ;

__attribute__((used)) static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_txp *txp;
 int ret, irq;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 txp = devm_kzalloc(dev, sizeof(*txp), GFP_KERNEL);
 if (!txp)
  return -ENOMEM;

 txp->pdev = pdev;

 txp->regs = vc4_ioremap_regs(pdev, 0);
 if (IS_ERR(txp->regs))
  return PTR_ERR(txp->regs);
 txp->regset.base = txp->regs;
 txp->regset.regs = txp_regs;
 txp->regset.nregs = ARRAY_SIZE(txp_regs);

 drm_connector_helper_add(&txp->connector.base,
     &vc4_txp_connector_helper_funcs);
 ret = drm_writeback_connector_init(drm, &txp->connector,
        &vc4_txp_connector_funcs,
        &vc4_txp_encoder_helper_funcs,
        drm_fmts, ARRAY_SIZE(drm_fmts));
 if (ret)
  return ret;

 ret = devm_request_irq(dev, irq, vc4_txp_interrupt, 0,
          dev_name(dev), txp);
 if (ret)
  return ret;

 dev_set_drvdata(dev, txp);
 vc4->txp = txp;

 vc4_debugfs_add_regset32(drm, "txp_regs", &txp->regset);

 return 0;
}
