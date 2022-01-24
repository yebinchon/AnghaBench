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
struct vc4_dpi {int /*<<< orphan*/  core_clock; int /*<<< orphan*/  encoder; } ;
struct vc4_dev {int /*<<< orphan*/ * dpi; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = FUNC1(master);
	struct vc4_dev *vc4 = FUNC4(drm);
	struct vc4_dpi *dpi = FUNC1(dev);

	FUNC3(dev->of_node, 0, 0);

	FUNC2(dpi->encoder);

	FUNC0(dpi->core_clock);

	vc4->dpi = NULL;
}