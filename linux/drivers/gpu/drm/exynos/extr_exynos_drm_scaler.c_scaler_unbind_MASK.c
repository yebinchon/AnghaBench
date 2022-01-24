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
struct exynos_drm_ipp {int dummy; } ;
struct scaler_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  drm_dev; struct exynos_drm_ipp ipp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scaler_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct exynos_drm_ipp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			void *data)
{
	struct scaler_context *scaler = FUNC0(dev);
	struct exynos_drm_ipp *ipp = &scaler->ipp;

	FUNC1(dev, ipp);
	FUNC2(scaler->drm_dev, scaler->dev);
}