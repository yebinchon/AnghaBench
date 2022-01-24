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
struct vc4_dsi {int port; int /*<<< orphan*/  encoder; scalar_t__ bridge; } ;
struct vc4_dev {int /*<<< orphan*/ * dsi1; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = FUNC0(master);
	struct vc4_dev *vc4 = FUNC2(drm);
	struct vc4_dsi *dsi = FUNC0(dev);

	if (dsi->bridge)
		FUNC1(dev);

	FUNC3(dsi->encoder);

	if (dsi->port == 1)
		vc4->dsi1 = NULL;
}