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
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int I915_GTT_PAGE_SIZE ; 
 unsigned long INTEL_GVT_INVALID_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,unsigned long,void*,unsigned long) ; 
 unsigned long FUNC2 (struct intel_vgpu_mm*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct intel_vgpu *vgpu, struct intel_vgpu_mm *mm,
		unsigned long gma, unsigned long end_gma, void *va)
{
	unsigned long copy_len, offset;
	unsigned long len = 0;
	unsigned long gpa;

	while (gma != end_gma) {
		gpa = FUNC2(mm, gma);
		if (gpa == INTEL_GVT_INVALID_ADDR) {
			FUNC0("invalid gma address: %lx\n", gma);
			return -EFAULT;
		}

		offset = gma & (I915_GTT_PAGE_SIZE - 1);

		copy_len = (end_gma - gma) >= (I915_GTT_PAGE_SIZE - offset) ?
			I915_GTT_PAGE_SIZE - offset : end_gma - gma;

		FUNC1(vgpu, gpa, va + len, copy_len);

		len += copy_len;
		gma += copy_len;
	}
	return len;
}