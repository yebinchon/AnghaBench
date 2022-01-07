
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef size_t u32 ;
struct msm_kms {int dummy; } ;
struct msm_drm_private {int dummy; } ;
struct TYPE_26__ {int max_width; int max_height; int allow_fb_modifiers; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_3__ mode_config; struct msm_drm_private* dev_private; } ;
struct dpu_kms {int rm_init; TYPE_5__* pdev; int perf; TYPE_4__* catalog; TYPE_4__* hw_intr; TYPE_4__* mmio; TYPE_4__** hw_vbif; TYPE_4__** vbif; TYPE_4__* hw_mdp; int rm; int core_rev; void* reg_dma_len; TYPE_4__* reg_dma; void** vbif_len; void* mmio_len; int bandwidth_ref; struct drm_device* dev; } ;
struct TYPE_28__ {int dev; } ;
struct TYPE_27__ {int vbif_count; TYPE_2__* caps; TYPE_1__* vbif; } ;
struct TYPE_25__ {int max_mixer_width; } ;
struct TYPE_24__ {size_t id; } ;


 int DPU_DEBUG (char*) ;
 int DPU_ERROR (char*,...) ;
 int DRM_DEBUG (char*,TYPE_4__*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_4__*) ;
 int MDP_TOP ;
 int PTR_ERR (TYPE_4__*) ;
 size_t VBIF_NRT ;
 size_t VBIF_RT ;
 int _dpu_kms_drm_obj_init (struct dpu_kms*) ;
 int _dpu_kms_get_clk (struct dpu_kms*,char*) ;
 int _dpu_kms_hw_destroy (struct dpu_kms*) ;
 int _dpu_kms_mmu_init (struct dpu_kms*) ;
 int atomic_set (int *,int ) ;
 int dpu_core_perf_destroy (int *) ;
 int dpu_core_perf_init (int *,struct drm_device*,TYPE_4__*,int ) ;
 TYPE_4__* dpu_hw_catalog_init (int ) ;
 TYPE_4__* dpu_hw_intr_init (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* dpu_hw_mdptop_init (int ,TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* dpu_hw_vbif_init (size_t,TYPE_4__*,TYPE_4__*) ;
 void* dpu_iomap_size (TYPE_5__*,char*) ;
 int dpu_rm_init (int *,TYPE_4__*,TYPE_4__*) ;
 int dpu_vbif_init_memtypes (struct dpu_kms*) ;
 void* msm_ioremap (TYPE_5__*,char*,char*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int pr_info (char*,int ) ;
 int readl_relaxed (TYPE_4__*) ;
 struct dpu_kms* to_dpu_kms (struct msm_kms*) ;

__attribute__((used)) static int dpu_kms_hw_init(struct msm_kms *kms)
{
 struct dpu_kms *dpu_kms;
 struct drm_device *dev;
 struct msm_drm_private *priv;
 int i, rc = -EINVAL;

 if (!kms) {
  DPU_ERROR("invalid kms\n");
  return rc;
 }

 dpu_kms = to_dpu_kms(kms);
 dev = dpu_kms->dev;
 if (!dev) {
  DPU_ERROR("invalid device\n");
  return rc;
 }

 priv = dev->dev_private;
 if (!priv) {
  DPU_ERROR("invalid private data\n");
  return rc;
 }

 atomic_set(&dpu_kms->bandwidth_ref, 0);

 dpu_kms->mmio = msm_ioremap(dpu_kms->pdev, "mdp", "mdp");
 if (IS_ERR(dpu_kms->mmio)) {
  rc = PTR_ERR(dpu_kms->mmio);
  DPU_ERROR("mdp register memory map failed: %d\n", rc);
  dpu_kms->mmio = ((void*)0);
  goto error;
 }
 DRM_DEBUG("mapped dpu address space @%pK\n", dpu_kms->mmio);
 dpu_kms->mmio_len = dpu_iomap_size(dpu_kms->pdev, "mdp");

 dpu_kms->vbif[VBIF_RT] = msm_ioremap(dpu_kms->pdev, "vbif", "vbif");
 if (IS_ERR(dpu_kms->vbif[VBIF_RT])) {
  rc = PTR_ERR(dpu_kms->vbif[VBIF_RT]);
  DPU_ERROR("vbif register memory map failed: %d\n", rc);
  dpu_kms->vbif[VBIF_RT] = ((void*)0);
  goto error;
 }
 dpu_kms->vbif_len[VBIF_RT] = dpu_iomap_size(dpu_kms->pdev, "vbif");
 dpu_kms->vbif[VBIF_NRT] = msm_ioremap(dpu_kms->pdev, "vbif_nrt", "vbif_nrt");
 if (IS_ERR(dpu_kms->vbif[VBIF_NRT])) {
  dpu_kms->vbif[VBIF_NRT] = ((void*)0);
  DPU_DEBUG("VBIF NRT is not defined");
 } else {
  dpu_kms->vbif_len[VBIF_NRT] = dpu_iomap_size(dpu_kms->pdev,
            "vbif_nrt");
 }

 dpu_kms->reg_dma = msm_ioremap(dpu_kms->pdev, "regdma", "regdma");
 if (IS_ERR(dpu_kms->reg_dma)) {
  dpu_kms->reg_dma = ((void*)0);
  DPU_DEBUG("REG_DMA is not defined");
 } else {
  dpu_kms->reg_dma_len = dpu_iomap_size(dpu_kms->pdev, "regdma");
 }

 pm_runtime_get_sync(&dpu_kms->pdev->dev);

 dpu_kms->core_rev = readl_relaxed(dpu_kms->mmio + 0x0);

 pr_info("dpu hardware revision:0x%x\n", dpu_kms->core_rev);

 dpu_kms->catalog = dpu_hw_catalog_init(dpu_kms->core_rev);
 if (IS_ERR_OR_NULL(dpu_kms->catalog)) {
  rc = PTR_ERR(dpu_kms->catalog);
  if (!dpu_kms->catalog)
   rc = -EINVAL;
  DPU_ERROR("catalog init failed: %d\n", rc);
  dpu_kms->catalog = ((void*)0);
  goto power_error;
 }





 rc = _dpu_kms_mmu_init(dpu_kms);
 if (rc) {
  DPU_ERROR("dpu_kms_mmu_init failed: %d\n", rc);
  goto power_error;
 }

 rc = dpu_rm_init(&dpu_kms->rm, dpu_kms->catalog, dpu_kms->mmio);
 if (rc) {
  DPU_ERROR("rm init failed: %d\n", rc);
  goto power_error;
 }

 dpu_kms->rm_init = 1;

 dpu_kms->hw_mdp = dpu_hw_mdptop_init(MDP_TOP, dpu_kms->mmio,
          dpu_kms->catalog);
 if (IS_ERR(dpu_kms->hw_mdp)) {
  rc = PTR_ERR(dpu_kms->hw_mdp);
  DPU_ERROR("failed to get hw_mdp: %d\n", rc);
  dpu_kms->hw_mdp = ((void*)0);
  goto power_error;
 }

 for (i = 0; i < dpu_kms->catalog->vbif_count; i++) {
  u32 vbif_idx = dpu_kms->catalog->vbif[i].id;

  dpu_kms->hw_vbif[i] = dpu_hw_vbif_init(vbif_idx,
    dpu_kms->vbif[vbif_idx], dpu_kms->catalog);
  if (IS_ERR_OR_NULL(dpu_kms->hw_vbif[vbif_idx])) {
   rc = PTR_ERR(dpu_kms->hw_vbif[vbif_idx]);
   if (!dpu_kms->hw_vbif[vbif_idx])
    rc = -EINVAL;
   DPU_ERROR("failed to init vbif %d: %d\n", vbif_idx, rc);
   dpu_kms->hw_vbif[vbif_idx] = ((void*)0);
   goto power_error;
  }
 }

 rc = dpu_core_perf_init(&dpu_kms->perf, dev, dpu_kms->catalog,
   _dpu_kms_get_clk(dpu_kms, "core"));
 if (rc) {
  DPU_ERROR("failed to init perf %d\n", rc);
  goto perf_err;
 }

 dpu_kms->hw_intr = dpu_hw_intr_init(dpu_kms->mmio, dpu_kms->catalog);
 if (IS_ERR_OR_NULL(dpu_kms->hw_intr)) {
  rc = PTR_ERR(dpu_kms->hw_intr);
  DPU_ERROR("hw_intr init failed: %d\n", rc);
  dpu_kms->hw_intr = ((void*)0);
  goto hw_intr_init_err;
 }

 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;





 dev->mode_config.max_width =
   dpu_kms->catalog->caps->max_mixer_width * 2;
 dev->mode_config.max_height = 4096;




 dev->mode_config.allow_fb_modifiers = 1;





 rc = _dpu_kms_drm_obj_init(dpu_kms);
 if (rc) {
  DPU_ERROR("modeset init failed: %d\n", rc);
  goto drm_obj_init_err;
 }

 dpu_vbif_init_memtypes(dpu_kms);

 pm_runtime_put_sync(&dpu_kms->pdev->dev);

 return 0;

drm_obj_init_err:
 dpu_core_perf_destroy(&dpu_kms->perf);
hw_intr_init_err:
perf_err:
power_error:
 pm_runtime_put_sync(&dpu_kms->pdev->dev);
error:
 _dpu_kms_hw_destroy(dpu_kms);

 return rc;
}
