
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct intel_gt {TYPE_2__* i915; } ;
typedef int intel_engine_mask_t ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int GRDOM_RESET_ENABLE ;
 int I915_GDRST ;
 int i915_in_reset (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int udelay (int) ;
 int wait_for_atomic (int,int) ;

__attribute__((used)) static int i915_do_reset(struct intel_gt *gt,
    intel_engine_mask_t engine_mask,
    unsigned int retry)
{
 struct pci_dev *pdev = gt->i915->drm.pdev;
 int err;


 pci_write_config_byte(pdev, I915_GDRST, GRDOM_RESET_ENABLE);
 udelay(50);
 err = wait_for_atomic(i915_in_reset(pdev), 50);


 pci_write_config_byte(pdev, I915_GDRST, 0);
 udelay(50);
 if (!err)
  err = wait_for_atomic(!i915_in_reset(pdev), 50);

 return err;
}
