
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct platform_device {int dev; } ;
struct msm_rbmemptrs {int dummy; } ;
struct msm_gpu_funcs {int dummy; } ;
struct msm_gpu_config {int nr_rings; int va_end; int va_start; int ioname; } ;
struct msm_gpu {int num_perfcntrs; void** last_cntrs; char const* name; void* mmio; int irq; void* ebi1_clk; void* gpu_reg; void* gpu_cx; void* aspace; void** rb; int nr_rings; int memptrs_bo; struct platform_device* pdev; int perf_lock; int hangcheck_timer; int recover_work; int retire_work; int active_list; struct msm_gpu_funcs const* funcs; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int ARRAY_SIZE (void**) ;
 int DBG (char*,void*) ;
 int DRM_DEV_ERROR (int ,char*,int,...) ;
 int DRM_DEV_INFO (int ,char*,char const*) ;
 int DRM_DEV_INFO_ONCE (int ,char*,int) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (void*) ;
 int MSM_BO_UNCACHED ;
 int PTR_ERR (void*) ;
 scalar_t__ WARN_ON (int) ;
 void* devm_regulator_get (int *,char*) ;
 int devm_request_irq (int *,int,int ,int ,char const*,struct msm_gpu*) ;
 int get_clocks (struct platform_device*,struct msm_gpu*) ;
 int hangcheck_handler ;
 int irq_handler ;
 void* msm_clk_get (struct platform_device*,char*) ;
 int msm_devfreq_init (struct msm_gpu*) ;
 void* msm_gem_kernel_new (struct drm_device*,int,int ,void*,int *,int*) ;
 int msm_gem_kernel_put (int ,void*,int) ;
 int msm_gem_object_set_name (int ,char*) ;
 void* msm_gpu_create_address_space (struct msm_gpu*,struct platform_device*,int ,int ) ;
 void* msm_ioremap (struct platform_device*,int ,char const*) ;
 int msm_ringbuffer_destroy (void*) ;
 void* msm_ringbuffer_new (struct msm_gpu*,int,void*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct msm_gpu*) ;
 int recover_worker ;
 int retire_worker ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int msm_gpu_init(struct drm_device *drm, struct platform_device *pdev,
  struct msm_gpu *gpu, const struct msm_gpu_funcs *funcs,
  const char *name, struct msm_gpu_config *config)
{
 int i, ret, nr_rings = config->nr_rings;
 void *memptrs;
 uint64_t memptrs_iova;

 if (WARN_ON(gpu->num_perfcntrs > ARRAY_SIZE(gpu->last_cntrs)))
  gpu->num_perfcntrs = ARRAY_SIZE(gpu->last_cntrs);

 gpu->dev = drm;
 gpu->funcs = funcs;
 gpu->name = name;

 INIT_LIST_HEAD(&gpu->active_list);
 INIT_WORK(&gpu->retire_work, retire_worker);
 INIT_WORK(&gpu->recover_work, recover_worker);


 timer_setup(&gpu->hangcheck_timer, hangcheck_handler, 0);

 spin_lock_init(&gpu->perf_lock);



 gpu->mmio = msm_ioremap(pdev, config->ioname, name);
 if (IS_ERR(gpu->mmio)) {
  ret = PTR_ERR(gpu->mmio);
  goto fail;
 }


 gpu->irq = platform_get_irq(pdev, 0);
 if (gpu->irq < 0) {
  ret = gpu->irq;
  DRM_DEV_ERROR(drm->dev, "failed to get irq: %d\n", ret);
  goto fail;
 }

 ret = devm_request_irq(&pdev->dev, gpu->irq, irq_handler,
   IRQF_TRIGGER_HIGH, gpu->name, gpu);
 if (ret) {
  DRM_DEV_ERROR(drm->dev, "failed to request IRQ%u: %d\n", gpu->irq, ret);
  goto fail;
 }

 ret = get_clocks(pdev, gpu);
 if (ret)
  goto fail;

 gpu->ebi1_clk = msm_clk_get(pdev, "bus");
 DBG("ebi1_clk: %p", gpu->ebi1_clk);
 if (IS_ERR(gpu->ebi1_clk))
  gpu->ebi1_clk = ((void*)0);


 gpu->gpu_reg = devm_regulator_get(&pdev->dev, "vdd");
 DBG("gpu_reg: %p", gpu->gpu_reg);
 if (IS_ERR(gpu->gpu_reg))
  gpu->gpu_reg = ((void*)0);

 gpu->gpu_cx = devm_regulator_get(&pdev->dev, "vddcx");
 DBG("gpu_cx: %p", gpu->gpu_cx);
 if (IS_ERR(gpu->gpu_cx))
  gpu->gpu_cx = ((void*)0);

 gpu->pdev = pdev;
 platform_set_drvdata(pdev, gpu);

 msm_devfreq_init(gpu);

 gpu->aspace = msm_gpu_create_address_space(gpu, pdev,
  config->va_start, config->va_end);

 if (gpu->aspace == ((void*)0))
  DRM_DEV_INFO(drm->dev, "%s: no IOMMU, fallback to VRAM carveout!\n", name);
 else if (IS_ERR(gpu->aspace)) {
  ret = PTR_ERR(gpu->aspace);
  goto fail;
 }

 memptrs = msm_gem_kernel_new(drm,
  sizeof(struct msm_rbmemptrs) * nr_rings,
  MSM_BO_UNCACHED, gpu->aspace, &gpu->memptrs_bo,
  &memptrs_iova);

 if (IS_ERR(memptrs)) {
  ret = PTR_ERR(memptrs);
  DRM_DEV_ERROR(drm->dev, "could not allocate memptrs: %d\n", ret);
  goto fail;
 }

 msm_gem_object_set_name(gpu->memptrs_bo, "memptrs");

 if (nr_rings > ARRAY_SIZE(gpu->rb)) {
  DRM_DEV_INFO_ONCE(drm->dev, "Only creating %zu ringbuffers\n",
   ARRAY_SIZE(gpu->rb));
  nr_rings = ARRAY_SIZE(gpu->rb);
 }


 for (i = 0; i < nr_rings; i++) {
  gpu->rb[i] = msm_ringbuffer_new(gpu, i, memptrs, memptrs_iova);

  if (IS_ERR(gpu->rb[i])) {
   ret = PTR_ERR(gpu->rb[i]);
   DRM_DEV_ERROR(drm->dev,
    "could not create ringbuffer %d: %d\n", i, ret);
   goto fail;
  }

  memptrs += sizeof(struct msm_rbmemptrs);
  memptrs_iova += sizeof(struct msm_rbmemptrs);
 }

 gpu->nr_rings = nr_rings;

 return 0;

fail:
 for (i = 0; i < ARRAY_SIZE(gpu->rb); i++) {
  msm_ringbuffer_destroy(gpu->rb[i]);
  gpu->rb[i] = ((void*)0);
 }

 msm_gem_kernel_put(gpu->memptrs_bo, gpu->aspace, 0);

 platform_set_drvdata(pdev, ((void*)0));
 return ret;
}
