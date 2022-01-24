#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct detailed_timing {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rb; int /*<<< orphan*/  r; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 TYPE_1__* est3_modes ; 

__attribute__((used)) static int
FUNC3(struct drm_connector *connector, struct detailed_timing *timing)
{
	int i, j, m, modes = 0;
	struct drm_display_mode *mode;
	u8 *est = ((u8 *)timing) + 6;

	for (i = 0; i < 6; i++) {
		for (j = 7; j >= 0; j--) {
			m = (i * 8) + (7 - j);
			if (m >= FUNC0(est3_modes))
				break;
			if (est[i] & (1 << j)) {
				mode = FUNC1(connector->dev,
							 est3_modes[m].w,
							 est3_modes[m].h,
							 est3_modes[m].r,
							 est3_modes[m].rb);
				if (mode) {
					FUNC2(connector, mode);
					modes++;
				}
			}
		}
	}

	return modes;
}