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
struct dw_mipi_dsi {int /*<<< orphan*/  bridge; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
{
	int ret;

	ret = FUNC1(encoder, &dsi->bridge, NULL);
	if (ret) {
		FUNC0("Failed to initialize bridge with drm\n");
		return ret;
	}

	return ret;
}