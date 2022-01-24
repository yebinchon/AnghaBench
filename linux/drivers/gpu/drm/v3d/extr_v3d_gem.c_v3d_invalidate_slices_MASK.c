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
struct v3d_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  V3D_CTL_SLCACTL ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_SLCACTL_ICC ; 
 int /*<<< orphan*/  V3D_SLCACTL_TDCCS ; 
 int /*<<< orphan*/  V3D_SLCACTL_TVCCS ; 
 int /*<<< orphan*/  V3D_SLCACTL_UCC ; 

__attribute__((used)) static void
FUNC2(struct v3d_dev *v3d, int core)
{
	FUNC0(core, V3D_CTL_SLCACTL,
		       FUNC1(0xf, V3D_SLCACTL_TVCCS) |
		       FUNC1(0xf, V3D_SLCACTL_TDCCS) |
		       FUNC1(0xf, V3D_SLCACTL_UCC) |
		       FUNC1(0xf, V3D_SLCACTL_ICC));
}