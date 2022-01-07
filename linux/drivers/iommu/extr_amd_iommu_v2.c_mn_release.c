
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int pasid; int invalid; struct device_state* device_state; } ;
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct device_state {int pdev; int (* inv_ctx_cb ) (int ,int ) ;} ;


 int might_sleep () ;
 struct pasid_state* mn_to_state (struct mmu_notifier*) ;
 int stub1 (int ,int ) ;
 int unbind_pasid (struct pasid_state*) ;

__attribute__((used)) static void mn_release(struct mmu_notifier *mn, struct mm_struct *mm)
{
 struct pasid_state *pasid_state;
 struct device_state *dev_state;
 bool run_inv_ctx_cb;

 might_sleep();

 pasid_state = mn_to_state(mn);
 dev_state = pasid_state->device_state;
 run_inv_ctx_cb = !pasid_state->invalid;

 if (run_inv_ctx_cb && dev_state->inv_ctx_cb)
  dev_state->inv_ctx_cb(dev_state->pdev, pasid_state->pasid);

 unbind_pasid(pasid_state);
}
