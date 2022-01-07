
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
 int g4x_reset_complete (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int wait_for_atomic (int ,int) ;

__attribute__((used)) static int g33_do_reset(struct intel_gt *gt,
   intel_engine_mask_t engine_mask,
   unsigned int retry)
{
 struct pci_dev *pdev = gt->i915->drm.pdev;

 pci_write_config_byte(pdev, I915_GDRST, GRDOM_RESET_ENABLE);
 return wait_for_atomic(g4x_reset_complete(pdev), 50);
}
