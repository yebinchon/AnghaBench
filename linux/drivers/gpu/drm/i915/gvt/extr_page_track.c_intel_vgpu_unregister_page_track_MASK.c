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
struct intel_vgpu_page_track {scalar_t__ tracked; } ;
struct intel_vgpu {int /*<<< orphan*/  page_track_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu_page_track*) ; 
 struct intel_vgpu_page_track* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct intel_vgpu *vgpu,
		unsigned long gfn)
{
	struct intel_vgpu_page_track *track;

	track = FUNC2(&vgpu->page_track_tree, gfn);
	if (track) {
		if (track->tracked)
			FUNC0(vgpu, gfn);
		FUNC1(track);
	}
}