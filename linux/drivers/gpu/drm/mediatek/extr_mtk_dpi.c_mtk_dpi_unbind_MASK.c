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
struct mtk_dpi {int /*<<< orphan*/  ddp_comp; int /*<<< orphan*/  encoder; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mtk_dpi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			   void *data)
{
	struct mtk_dpi *dpi = FUNC0(dev);
	struct drm_device *drm_dev = data;

	FUNC1(&dpi->encoder);
	FUNC2(drm_dev, &dpi->ddp_comp);
}