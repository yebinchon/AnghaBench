#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_color_lut {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_2__ {void** blue; void** green; void** red; } ;
struct dc_gamma {TYPE_1__ entries; } ;

/* Variables and functions */
 int MAX_COLOR_LEGACY_LUT_ENTRIES ; 
 int MAX_COLOR_LUT_ENTRIES ; 
 int /*<<< orphan*/  MAX_DRM_LUT_VALUE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const struct drm_color_lut *lut,
				  struct dc_gamma *gamma, bool is_legacy)
{
	uint32_t r, g, b;
	int i;

	if (is_legacy) {
		for (i = 0; i < MAX_COLOR_LEGACY_LUT_ENTRIES; i++) {
			r = FUNC2(lut[i].red, 16);
			g = FUNC2(lut[i].green, 16);
			b = FUNC2(lut[i].blue, 16);

			gamma->entries.red[i] = FUNC1(r);
			gamma->entries.green[i] = FUNC1(g);
			gamma->entries.blue[i] = FUNC1(b);
		}
		return;
	}

	/* else */
	for (i = 0; i < MAX_COLOR_LUT_ENTRIES; i++) {
		r = FUNC2(lut[i].red, 16);
		g = FUNC2(lut[i].green, 16);
		b = FUNC2(lut[i].blue, 16);

		gamma->entries.red[i] = FUNC0(r, MAX_DRM_LUT_VALUE);
		gamma->entries.green[i] = FUNC0(g, MAX_DRM_LUT_VALUE);
		gamma->entries.blue[i] = FUNC0(b, MAX_DRM_LUT_VALUE);
	}
}