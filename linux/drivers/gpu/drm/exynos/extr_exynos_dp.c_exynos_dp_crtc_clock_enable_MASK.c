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
struct drm_encoder {int /*<<< orphan*/  crtc; } ;
struct exynos_dp_device {struct drm_encoder encoder; } ;
struct analogix_dp_plat_data {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct exynos_dp_device* FUNC1 (struct analogix_dp_plat_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct analogix_dp_plat_data *plat_data,
				bool enable)
{
	struct exynos_dp_device *dp = FUNC1(plat_data);
	struct drm_encoder *encoder = &dp->encoder;

	if (!encoder->crtc)
		return -EPERM;

	FUNC0(FUNC2(encoder->crtc), enable);

	return 0;
}