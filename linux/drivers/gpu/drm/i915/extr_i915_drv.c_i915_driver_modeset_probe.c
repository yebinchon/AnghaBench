
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int num_pipes; } ;


 int ENODEV ;
 scalar_t__ HAS_DISPLAY (struct drm_i915_private*) ;
 TYPE_2__* INTEL_INFO (struct drm_i915_private*) ;
 int drm_vblank_init (TYPE_1__*,int ) ;
 int i915_gem_driver_release (struct drm_i915_private*) ;
 int i915_gem_driver_remove (struct drm_i915_private*) ;
 int i915_gem_init (struct drm_i915_private*) ;
 int i915_gem_suspend (struct drm_i915_private*) ;
 scalar_t__ i915_inject_probe_failure (struct drm_i915_private*) ;
 int i915_switcheroo_ops ;
 int * i915_vga_set_decode ;
 int intel_bios_init (struct drm_i915_private*) ;
 int intel_csr_ucode_fini (struct drm_i915_private*) ;
 int intel_csr_ucode_init (struct drm_i915_private*) ;
 int intel_fbdev_init (struct drm_device*) ;
 int intel_gmbus_setup (struct drm_i915_private*) ;
 int intel_gmbus_teardown (struct drm_i915_private*) ;
 int intel_hpd_init (struct drm_i915_private*) ;
 int intel_init_ipc (struct drm_i915_private*) ;
 int intel_irq_install (struct drm_i915_private*) ;
 int intel_irq_uninstall (struct drm_i915_private*) ;
 int intel_modeset_driver_remove (struct drm_device*) ;
 int intel_modeset_init (struct drm_device*) ;
 int intel_overlay_setup (struct drm_i915_private*) ;
 int intel_power_domains_driver_remove (struct drm_i915_private*) ;
 int intel_power_domains_init_hw (struct drm_i915_private*,int) ;
 int intel_register_dsm_handler () ;
 int intel_update_rawclk (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vga_client_register (struct pci_dev*,struct drm_i915_private*,int *,int *) ;
 int vga_switcheroo_register_client (struct pci_dev*,int *,int) ;
 int vga_switcheroo_unregister_client (struct pci_dev*) ;

__attribute__((used)) static int i915_driver_modeset_probe(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct pci_dev *pdev = dev_priv->drm.pdev;
 int ret;

 if (i915_inject_probe_failure(dev_priv))
  return -ENODEV;

 if (HAS_DISPLAY(dev_priv)) {
  ret = drm_vblank_init(&dev_priv->drm,
          INTEL_INFO(dev_priv)->num_pipes);
  if (ret)
   goto out;
 }

 intel_bios_init(dev_priv);
 ret = vga_client_register(pdev, dev_priv, ((void*)0), i915_vga_set_decode);
 if (ret && ret != -ENODEV)
  goto out;

 intel_register_dsm_handler();

 ret = vga_switcheroo_register_client(pdev, &i915_switcheroo_ops, 0);
 if (ret)
  goto cleanup_vga_client;


 intel_update_rawclk(dev_priv);

 intel_power_domains_init_hw(dev_priv, 0);

 intel_csr_ucode_init(dev_priv);

 ret = intel_irq_install(dev_priv);
 if (ret)
  goto cleanup_csr;

 intel_gmbus_setup(dev_priv);



 ret = intel_modeset_init(dev);
 if (ret)
  goto cleanup_irq;

 ret = i915_gem_init(dev_priv);
 if (ret)
  goto cleanup_modeset;

 intel_overlay_setup(dev_priv);

 if (!HAS_DISPLAY(dev_priv))
  return 0;

 ret = intel_fbdev_init(dev);
 if (ret)
  goto cleanup_gem;


 intel_hpd_init(dev_priv);

 intel_init_ipc(dev_priv);

 return 0;

cleanup_gem:
 i915_gem_suspend(dev_priv);
 i915_gem_driver_remove(dev_priv);
 i915_gem_driver_release(dev_priv);
cleanup_modeset:
 intel_modeset_driver_remove(dev);
cleanup_irq:
 intel_irq_uninstall(dev_priv);
 intel_gmbus_teardown(dev_priv);
cleanup_csr:
 intel_csr_ucode_fini(dev_priv);
 intel_power_domains_driver_remove(dev_priv);
 vga_switcheroo_unregister_client(pdev);
cleanup_vga_client:
 vga_client_register(pdev, ((void*)0), ((void*)0), ((void*)0));
out:
 return ret;
}
