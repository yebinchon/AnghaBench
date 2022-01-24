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
struct intel_vgpu_ppgtt_spt {TYPE_2__* vgpu; int /*<<< orphan*/  post_shadow_list; int /*<<< orphan*/  post_shadow_bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  post_shadow_list_head; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct intel_vgpu_ppgtt_spt *spt,
		unsigned long index)
{
	FUNC2(index, spt->post_shadow_bitmap);
	if (!FUNC1(&spt->post_shadow_list))
		return;

	FUNC0(&spt->post_shadow_list,
			&spt->vgpu->gtt.post_shadow_list_head);
}