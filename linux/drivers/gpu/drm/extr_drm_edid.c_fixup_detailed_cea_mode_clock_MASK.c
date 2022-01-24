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
typedef  size_t u8 ;
struct drm_display_mode {int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct drm_display_mode const*) ; 
 size_t FUNC3 (struct drm_display_mode*,int) ; 
 size_t FUNC4 (struct drm_display_mode*,int) ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (size_t) ; 
 struct drm_display_mode* edid_4k_modes ; 
 struct drm_display_mode* edid_cea_modes ; 
 int FUNC7 (struct drm_display_mode const*) ; 

__attribute__((used)) static void FUNC8(struct drm_display_mode *mode)
{
	const struct drm_display_mode *cea_mode;
	int clock1, clock2, clock;
	u8 vic;
	const char *type;

	/*
	 * allow 5kHz clock difference either way to account for
	 * the 10kHz clock resolution limit of detailed timings.
	 */
	vic = FUNC3(mode, 5);
	if (FUNC5(vic)) {
		type = "CEA";
		cea_mode = &edid_cea_modes[vic];
		clock1 = cea_mode->clock;
		clock2 = FUNC2(cea_mode);
	} else {
		vic = FUNC4(mode, 5);
		if (FUNC6(vic)) {
			type = "HDMI";
			cea_mode = &edid_4k_modes[vic];
			clock1 = cea_mode->clock;
			clock2 = FUNC7(cea_mode);
		} else {
			return;
		}
	}

	/* pick whichever is closest */
	if (FUNC1(mode->clock - clock1) < FUNC1(mode->clock - clock2))
		clock = clock1;
	else
		clock = clock2;

	if (mode->clock == clock)
		return;

	FUNC0("detailed mode matches %s VIC %d, adjusting clock %d -> %d\n",
		  type, vic, mode->clock, clock);
	mode->clock = clock;
}