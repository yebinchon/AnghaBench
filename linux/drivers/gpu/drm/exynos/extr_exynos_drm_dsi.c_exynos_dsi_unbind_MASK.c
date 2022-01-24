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
struct exynos_dsi {int /*<<< orphan*/  dsi_host; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct drm_encoder* FUNC0 (struct device*) ; 
 struct exynos_dsi* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
				void *data)
{
	struct drm_encoder *encoder = FUNC0(dev);
	struct exynos_dsi *dsi = FUNC1(encoder);

	FUNC2(encoder);

	FUNC3(&dsi->dsi_host);
}