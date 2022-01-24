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
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_L2CACTL ; 
 int V3D_L2CACTL_L2CCLR ; 
 int /*<<< orphan*/  V3D_SLCACTL ; 
 int /*<<< orphan*/  V3D_SLCACTL_T0CC ; 
 int /*<<< orphan*/  V3D_SLCACTL_T1CC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC3(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC2(dev);

	FUNC0(V3D_L2CACTL,
		  V3D_L2CACTL_L2CCLR);

	FUNC0(V3D_SLCACTL,
		  FUNC1(0xf, V3D_SLCACTL_T1CC) |
		  FUNC1(0xf, V3D_SLCACTL_T0CC));
}