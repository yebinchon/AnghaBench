
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int live; } ;


 int ENOTTY ;
 TYPE_1__ i915_selftest ;
 int live ;
 int pdev_to_i915 (struct pci_dev*) ;
 int run_selftests (int ,int ) ;

int i915_live_selftests(struct pci_dev *pdev)
{
 int err;

 if (!i915_selftest.live)
  return 0;

 err = run_selftests(live, pdev_to_i915(pdev));
 if (err) {
  i915_selftest.live = err;
  return err;
 }

 if (i915_selftest.live < 0) {
  i915_selftest.live = -ENOTTY;
  return 1;
 }

 return 0;
}
