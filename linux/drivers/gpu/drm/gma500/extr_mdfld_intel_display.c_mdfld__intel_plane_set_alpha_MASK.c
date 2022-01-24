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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPPLANE_32BPP ; 
 int /*<<< orphan*/  DISPPLANE_32BPP_NO_ALPHA ; 
 int DSPACNTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct drm_device globle_dev ; 

void FUNC2(int enable)
{
	struct drm_device *dev = &globle_dev;
	int dspcntr_reg = DSPACNTR;
	u32 dspcntr;

	dspcntr = FUNC0(dspcntr_reg);

	if (enable) {
		dspcntr &= ~DISPPLANE_32BPP_NO_ALPHA;
		dspcntr |= DISPPLANE_32BPP;
	} else {
		dspcntr &= ~DISPPLANE_32BPP;
		dspcntr |= DISPPLANE_32BPP_NO_ALPHA;
	}

	FUNC1(dspcntr_reg, dspcntr);
}