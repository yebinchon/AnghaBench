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
struct vc4_dev {int /*<<< orphan*/ * v3d; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_BPOA ; 
 int /*<<< orphan*/  V3D_BPOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = FUNC1(master);
	struct vc4_dev *vc4 = FUNC4(drm);

	FUNC3(dev);

	FUNC2(drm);

	/* Disable the binner's overflow memory address, so the next
	 * driver probe (if any) doesn't try to reuse our old
	 * allocation.
	 */
	FUNC0(V3D_BPOA, 0);
	FUNC0(V3D_BPOS, 0);

	vc4->v3d = NULL;
}