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
struct vc4_dev {int /*<<< orphan*/  ctm_manager; int /*<<< orphan*/  load_tracker; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct drm_device *drm = FUNC0(dev);
	struct vc4_dev *vc4 = FUNC6(drm);

	FUNC4(drm);

	FUNC1(drm);

	FUNC5(drm);

	FUNC2(&vc4->load_tracker);
	FUNC2(&vc4->ctm_manager);

	FUNC3(drm);
}