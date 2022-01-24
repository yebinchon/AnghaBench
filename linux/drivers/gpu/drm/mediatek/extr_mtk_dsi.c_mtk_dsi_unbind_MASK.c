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
struct mtk_dsi {int /*<<< orphan*/  ddp_comp; int /*<<< orphan*/  host; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mtk_dsi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_dsi*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = data;
	struct mtk_dsi *dsi = FUNC0(dev);

	FUNC3(dsi);
	FUNC1(&dsi->host);
	FUNC2(drm, &dsi->ddp_comp);
}