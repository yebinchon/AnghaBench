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
struct v3d_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_MMUC_CONTROL ; 
 int V3D_MMUC_CONTROL_ENABLE ; 
 int V3D_MMUC_CONTROL_FLUSH ; 
 int V3D_MMUC_CONTROL_FLUSHING ; 
 int /*<<< orphan*/  V3D_MMU_CTL ; 
 int V3D_MMU_CTL_TLB_CLEAR ; 
 int V3D_MMU_CTL_TLB_CLEARING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct v3d_dev *v3d)
{
	int ret;

	/* Make sure that another flush isn't already running when we
	 * start this one.
	 */
	ret = FUNC3(!(FUNC0(V3D_MMU_CTL) &
			 V3D_MMU_CTL_TLB_CLEARING), 100);
	if (ret)
		FUNC2(v3d->dev, "TLB clear wait idle pre-wait failed\n");

	FUNC1(V3D_MMU_CTL, FUNC0(V3D_MMU_CTL) |
		  V3D_MMU_CTL_TLB_CLEAR);

	FUNC1(V3D_MMUC_CONTROL,
		  V3D_MMUC_CONTROL_FLUSH |
		  V3D_MMUC_CONTROL_ENABLE);

	ret = FUNC3(!(FUNC0(V3D_MMU_CTL) &
			 V3D_MMU_CTL_TLB_CLEARING), 100);
	if (ret) {
		FUNC2(v3d->dev, "TLB clear wait idle failed\n");
		return ret;
	}

	ret = FUNC3(!(FUNC0(V3D_MMUC_CONTROL) &
			 V3D_MMUC_CONTROL_FLUSHING), 100);
	if (ret)
		FUNC2(v3d->dev, "MMUC flush wait idle failed\n");

	return ret;
}