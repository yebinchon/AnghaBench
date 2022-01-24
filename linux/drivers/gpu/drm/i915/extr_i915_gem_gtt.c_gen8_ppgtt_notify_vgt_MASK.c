#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {struct drm_i915_private* i915; } ;
struct i915_ppgtt {int /*<<< orphan*/  pd; TYPE_3__ vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ vgpu; } ;
typedef  enum vgt_g2v_type { ____Placeholder_vgt_g2v_type } vgt_g2v_type ;
struct TYPE_5__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;

/* Variables and functions */
 int GEN8_3LVL_PDPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE ; 
 int VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY ; 
 int VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE ; 
 int VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g2v_notify ; 
 int /*<<< orphan*/  FUNC3 (struct i915_ppgtt*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* pdp ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct i915_ppgtt *ppgtt, bool create)
{
	struct drm_i915_private *dev_priv = ppgtt->vm.i915;
	enum vgt_g2v_type msg;
	int i;

	if (create)
		FUNC2(FUNC9(ppgtt->pd)); /* never remove */
	else
		FUNC1(FUNC9(ppgtt->pd));

	FUNC6(&dev_priv->vgpu.lock);

	if (FUNC4(&ppgtt->vm)) {
		const u64 daddr = FUNC8(ppgtt->pd);

		FUNC0(FUNC11(pdp[0].lo), FUNC5(daddr));
		FUNC0(FUNC11(pdp[0].hi), FUNC10(daddr));

		msg = (create ? VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE :
				VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY);
	} else {
		for (i = 0; i < GEN8_3LVL_PDPES; i++) {
			const u64 daddr = FUNC3(ppgtt, i);

			FUNC0(FUNC11(pdp[i].lo), FUNC5(daddr));
			FUNC0(FUNC11(pdp[i].hi), FUNC10(daddr));
		}

		msg = (create ? VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE :
				VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY);
	}

	/* g2v_notify atomically (via hv trap) consumes the message packet. */
	FUNC0(FUNC11(g2v_notify), msg);

	FUNC7(&dev_priv->vgpu.lock);
}