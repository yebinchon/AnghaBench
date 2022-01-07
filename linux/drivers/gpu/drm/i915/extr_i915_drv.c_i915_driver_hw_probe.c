
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ msi_enabled; int dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int pm_qos; TYPE_1__ drm; } ;


 int DMA_BIT_MASK (int) ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 int ENXIO ;
 scalar_t__ HAS_EXECLISTS (struct drm_i915_private*) ;
 scalar_t__ HAS_PPGTT (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I965G (struct drm_i915_private*) ;
 scalar_t__ IS_I965GM (struct drm_i915_private*) ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int PM_QOS_DEFAULT_VALUE ;
 int UINT_MAX ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_max_seg_size (int *,int ) ;
 int edram_detect (struct drm_i915_private*) ;
 int i915_ggtt_driver_release (struct drm_i915_private*) ;
 int i915_ggtt_enable_hw (struct drm_i915_private*) ;
 int i915_ggtt_init_hw (struct drm_i915_private*) ;
 int i915_ggtt_probe_hw (struct drm_i915_private*) ;
 scalar_t__ i915_inject_probe_failure (struct drm_i915_private*) ;
 int i915_kick_out_firmware_fb (struct drm_i915_private*) ;
 int i915_perf_fini (struct drm_i915_private*) ;
 int i915_perf_init (struct drm_i915_private*) ;
 int i915_report_error (struct drm_i915_private*,char*) ;
 int intel_bw_init_hw (struct drm_i915_private*) ;
 int intel_device_info_runtime_init (struct drm_i915_private*) ;
 int intel_get_dram_info (struct drm_i915_private*) ;
 int intel_gt_init_hw (struct drm_i915_private*) ;
 int intel_gt_init_workarounds (struct drm_i915_private*) ;
 int intel_gvt_init (struct drm_i915_private*) ;
 int intel_opregion_setup (struct drm_i915_private*) ;
 int intel_sanitize_gt_powersave (struct drm_i915_private*) ;
 int intel_sanitize_options (struct drm_i915_private*) ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int intel_vgpu_has_full_ppgtt (struct drm_i915_private*) ;
 int intel_vgpu_has_hwsp_emulation (struct drm_i915_private*) ;
 int pci_disable_msi (struct pci_dev*) ;
 scalar_t__ pci_enable_msi (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pm_qos_add_request (int *,int ,int ) ;
 int pm_qos_remove_request (int *) ;
 int vga_remove_vgacon (struct pci_dev*) ;

__attribute__((used)) static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 int ret;

 if (i915_inject_probe_failure(dev_priv))
  return -ENODEV;

 intel_device_info_runtime_init(dev_priv);

 if (HAS_PPGTT(dev_priv)) {
  if (intel_vgpu_active(dev_priv) &&
      !intel_vgpu_has_full_ppgtt(dev_priv)) {
   i915_report_error(dev_priv,
       "incompatible vGPU found, support for isolated ppGTT required\n");
   return -ENXIO;
  }
 }

 if (HAS_EXECLISTS(dev_priv)) {





  if (intel_vgpu_active(dev_priv) &&
      !intel_vgpu_has_hwsp_emulation(dev_priv)) {
   i915_report_error(dev_priv,
       "old vGPU host found, support for HWSP emulation required\n");
   return -ENXIO;
  }
 }

 intel_sanitize_options(dev_priv);


 edram_detect(dev_priv);

 i915_perf_init(dev_priv);

 ret = i915_ggtt_probe_hw(dev_priv);
 if (ret)
  goto err_perf;





 ret = i915_kick_out_firmware_fb(dev_priv);
 if (ret) {
  DRM_ERROR("failed to remove conflicting framebuffer drivers\n");
  goto err_ggtt;
 }

 ret = vga_remove_vgacon(pdev);
 if (ret) {
  DRM_ERROR("failed to remove conflicting VGA console\n");
  goto err_ggtt;
 }

 ret = i915_ggtt_init_hw(dev_priv);
 if (ret)
  goto err_ggtt;

 intel_gt_init_hw(dev_priv);

 ret = i915_ggtt_enable_hw(dev_priv);
 if (ret) {
  DRM_ERROR("failed to enable GGTT\n");
  goto err_ggtt;
 }

 pci_set_master(pdev);





 dma_set_max_seg_size(&pdev->dev, UINT_MAX);


 if (IS_GEN(dev_priv, 2)) {
  ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(30));
  if (ret) {
   DRM_ERROR("failed to set DMA mask\n");

   goto err_ggtt;
  }
 }
 if (IS_I965G(dev_priv) || IS_I965GM(dev_priv)) {
  ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

  if (ret) {
   DRM_ERROR("failed to set DMA mask\n");

   goto err_ggtt;
  }
 }

 pm_qos_add_request(&dev_priv->pm_qos, PM_QOS_CPU_DMA_LATENCY,
      PM_QOS_DEFAULT_VALUE);


 intel_sanitize_gt_powersave(dev_priv);

 intel_gt_init_workarounds(dev_priv);
 if (INTEL_GEN(dev_priv) >= 5) {
  if (pci_enable_msi(pdev) < 0)
   DRM_DEBUG_DRIVER("can't enable MSI");
 }

 ret = intel_gvt_init(dev_priv);
 if (ret)
  goto err_msi;

 intel_opregion_setup(dev_priv);




 intel_get_dram_info(dev_priv);

 intel_bw_init_hw(dev_priv);

 return 0;

err_msi:
 if (pdev->msi_enabled)
  pci_disable_msi(pdev);
 pm_qos_remove_request(&dev_priv->pm_qos);
err_ggtt:
 i915_ggtt_driver_release(dev_priv);
err_perf:
 i915_perf_fini(dev_priv);
 return ret;
}
