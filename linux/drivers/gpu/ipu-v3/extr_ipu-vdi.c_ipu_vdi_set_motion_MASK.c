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
struct ipu_vdi {int /*<<< orphan*/  lock; } ;
typedef  enum ipu_motion_sel { ____Placeholder_ipu_motion_sel } ipu_motion_sel ;

/* Variables and functions */
#define  HIGH_MOTION 129 
#define  MED_MOTION 128 
 int /*<<< orphan*/  VDI_C ; 
 int /*<<< orphan*/  VDI_C_MOT_SEL_FULL ; 
 int /*<<< orphan*/  VDI_C_MOT_SEL_LOW ; 
 int /*<<< orphan*/  VDI_C_MOT_SEL_MASK ; 
 int /*<<< orphan*/  VDI_C_MOT_SEL_MED ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_vdi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_vdi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_vdi *vdi, enum ipu_motion_sel motion_sel)
{
	unsigned long flags;
	u32 reg;

	FUNC2(&vdi->lock, flags);

	reg = FUNC0(vdi, VDI_C);

	reg &= ~VDI_C_MOT_SEL_MASK;

	switch (motion_sel) {
	case MED_MOTION:
		reg |= VDI_C_MOT_SEL_MED;
		break;
	case HIGH_MOTION:
		reg |= VDI_C_MOT_SEL_FULL;
		break;
	default:
		reg |= VDI_C_MOT_SEL_LOW;
		break;
	}

	FUNC1(vdi, reg, VDI_C);

	FUNC3(&vdi->lock, flags);
}