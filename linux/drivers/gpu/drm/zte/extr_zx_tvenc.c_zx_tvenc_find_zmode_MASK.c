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
struct zx_tvenc_mode {int /*<<< orphan*/  mode; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zx_tvenc_mode**) ; 
 scalar_t__ FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ *) ; 
 struct zx_tvenc_mode** tvenc_modes ; 

__attribute__((used)) static const struct zx_tvenc_mode *
FUNC2(struct drm_display_mode *mode)
{
	int i;

	for (i = 0; i < FUNC0(tvenc_modes); i++) {
		const struct zx_tvenc_mode *zmode = tvenc_modes[i];

		if (FUNC1(mode, &zmode->mode))
			return zmode;
	}

	return NULL;
}