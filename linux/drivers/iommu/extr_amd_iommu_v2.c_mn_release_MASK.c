#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pasid_state {int /*<<< orphan*/  pasid; int /*<<< orphan*/  invalid; struct device_state* device_state; } ;
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct device_state {int /*<<< orphan*/  pdev; int /*<<< orphan*/  (* inv_ctx_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct pasid_state* FUNC1 (struct mmu_notifier*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pasid_state*) ; 

__attribute__((used)) static void FUNC4(struct mmu_notifier *mn, struct mm_struct *mm)
{
	struct pasid_state *pasid_state;
	struct device_state *dev_state;
	bool run_inv_ctx_cb;

	FUNC0();

	pasid_state    = FUNC1(mn);
	dev_state      = pasid_state->device_state;
	run_inv_ctx_cb = !pasid_state->invalid;

	if (run_inv_ctx_cb && dev_state->inv_ctx_cb)
		dev_state->inv_ctx_cb(dev_state->pdev, pasid_state->pasid);

	FUNC3(pasid_state);
}