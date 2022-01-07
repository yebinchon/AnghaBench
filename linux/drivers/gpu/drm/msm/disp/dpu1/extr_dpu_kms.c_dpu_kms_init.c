
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_kms {int irq; } ;
struct msm_drm_private {int kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {struct msm_kms base; TYPE_1__* pdev; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int DPU_ERROR (char*,...) ;
 int EINVAL ;
 struct msm_kms* ERR_PTR (int) ;
 int irq_of_parse_and_map (int ,int ) ;
 struct dpu_kms* to_dpu_kms (int ) ;

struct msm_kms *dpu_kms_init(struct drm_device *dev)
{
 struct msm_drm_private *priv;
 struct dpu_kms *dpu_kms;
 int irq;

 if (!dev || !dev->dev_private) {
  DPU_ERROR("drm device node invalid\n");
  return ERR_PTR(-EINVAL);
 }

 priv = dev->dev_private;
 dpu_kms = to_dpu_kms(priv->kms);

 irq = irq_of_parse_and_map(dpu_kms->pdev->dev.of_node, 0);
 if (irq < 0) {
  DPU_ERROR("failed to get irq: %d\n", irq);
  return ERR_PTR(irq);
 }
 dpu_kms->base.irq = irq;

 return &dpu_kms->base;
}
