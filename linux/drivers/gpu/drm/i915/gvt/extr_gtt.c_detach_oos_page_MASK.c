#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * oos_page; scalar_t__ write_cnt; int /*<<< orphan*/  type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ guest_page; } ;
struct intel_vgpu_oos_page {int /*<<< orphan*/  list; int /*<<< orphan*/  vm_list; struct intel_vgpu_ppgtt_spt* spt; int /*<<< orphan*/  id; } ;
struct intel_vgpu {int /*<<< orphan*/  id; struct intel_gvt* gvt; } ;
struct TYPE_4__ {int /*<<< orphan*/  oos_page_free_list_head; } ;
struct intel_gvt {TYPE_2__ gtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct intel_vgpu_ppgtt_spt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct intel_vgpu *vgpu,
		struct intel_vgpu_oos_page *oos_page)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct intel_vgpu_ppgtt_spt *spt = oos_page->spt;

	FUNC2(vgpu->id, "detach", oos_page->id,
			 spt, spt->guest_page.type);

	spt->guest_page.write_cnt = 0;
	spt->guest_page.oos_page = NULL;
	oos_page->spt = NULL;

	FUNC0(&oos_page->vm_list);
	FUNC1(&oos_page->list, &gvt->gtt.oos_page_free_list_head);

	return 0;
}