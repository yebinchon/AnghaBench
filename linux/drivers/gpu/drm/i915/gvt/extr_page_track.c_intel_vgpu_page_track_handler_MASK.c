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
typedef  int u64 ;
struct intel_vgpu_page_track {int (* handler ) (struct intel_vgpu_page_track*,int,void*,unsigned int) ;} ;
struct intel_vgpu {int /*<<< orphan*/  vgpu_lock; int /*<<< orphan*/  failsafe; } ;

/* Variables and functions */
 int ENXIO ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,int) ; 
 struct intel_vgpu_page_track* FUNC2 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct intel_vgpu_page_track*,int,void*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct intel_vgpu *vgpu, u64 gpa,
		void *data, unsigned int bytes)
{
	struct intel_vgpu_page_track *page_track;
	int ret = 0;

	FUNC3(&vgpu->vgpu_lock);

	page_track = FUNC2(vgpu, gpa >> PAGE_SHIFT);
	if (!page_track) {
		ret = -ENXIO;
		goto out;
	}

	if (FUNC6(vgpu->failsafe)) {
		/* Remove write protection to prevent furture traps. */
		FUNC1(vgpu, gpa >> PAGE_SHIFT);
	} else {
		ret = page_track->handler(page_track, gpa, data, bytes);
		if (ret)
			FUNC0("guest page write error, gpa %llx\n", gpa);
	}

out:
	FUNC4(&vgpu->vgpu_lock);
	return ret;
}