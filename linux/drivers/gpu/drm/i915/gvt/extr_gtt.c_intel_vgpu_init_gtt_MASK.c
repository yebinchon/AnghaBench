#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu_gtt {TYPE_2__* ggtt_mm; int /*<<< orphan*/  post_shadow_list_head; int /*<<< orphan*/  oos_page_list_head; int /*<<< orphan*/  ppgtt_mm_list_head; int /*<<< orphan*/  spt_tree; } ;
struct intel_vgpu {struct intel_vgpu_gtt gtt; } ;
struct TYPE_5__ {int /*<<< orphan*/  partial_pte_list; } ;
struct TYPE_6__ {TYPE_1__ ggtt_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*,int) ; 

int FUNC8(struct intel_vgpu *vgpu)
{
	struct intel_vgpu_gtt *gtt = &vgpu->gtt;

	FUNC1(&gtt->spt_tree, GFP_KERNEL);

	FUNC0(&gtt->ppgtt_mm_list_head);
	FUNC0(&gtt->oos_page_list_head);
	FUNC0(&gtt->post_shadow_list_head);

	gtt->ggtt_mm = FUNC6(vgpu);
	if (FUNC2(gtt->ggtt_mm)) {
		FUNC5("fail to create mm for ggtt.\n");
		return FUNC3(gtt->ggtt_mm);
	}

	FUNC7(vgpu, false);

	FUNC0(&gtt->ggtt_mm->ggtt_mm.partial_pte_list);

	return FUNC4(vgpu);
}