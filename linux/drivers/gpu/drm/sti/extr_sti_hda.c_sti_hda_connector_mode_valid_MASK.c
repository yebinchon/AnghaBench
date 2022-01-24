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
struct sti_hda_connector {struct sti_hda* hda; } ;
struct sti_hda {int /*<<< orphan*/  clk_pix; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int CLK_TOLERANCE_HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int MODE_BAD ; 
 int MODE_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode,int*) ; 
 struct sti_hda_connector* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC4(struct drm_connector *connector,
					struct drm_display_mode *mode)
{
	int target = mode->clock * 1000;
	int target_min = target - CLK_TOLERANCE_HZ;
	int target_max = target + CLK_TOLERANCE_HZ;
	int result;
	int idx;
	struct sti_hda_connector *hda_connector
		= FUNC3(connector);
	struct sti_hda *hda = hda_connector->hda;

	if (!FUNC2(*mode, &idx)) {
		return MODE_BAD;
	} else {
		result = FUNC1(hda->clk_pix, target);

		FUNC0("target rate = %d => available rate = %d\n",
				 target, result);

		if ((result < target_min) || (result > target_max)) {
			FUNC0("hda pixclk=%d not supported\n",
					 target);
			return MODE_BAD;
		}
	}

	return MODE_OK;
}