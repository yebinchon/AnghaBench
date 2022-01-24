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
typedef  int u32 ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct intel_vgpu*) ; 

__attribute__((used)) static inline void FUNC3(struct intel_vgpu *vgpu,
					    u32 offset, u32 val, bool low)
{
	u32 *pval;

	/* BAR offset should be 32 bits algiend */
	offset = FUNC1(offset, 4);
	pval = (u32 *)(FUNC2(vgpu) + offset);

	if (low) {
		/*
		 * only update bit 31 - bit 4,
		 * leave the bit 3 - bit 0 unchanged.
		 */
		*pval = (val & FUNC0(31, 4)) | (*pval & FUNC0(3, 0));
	} else {
		*pval = val;
	}
}