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
typedef  int u32 ;
struct tegra_hdmi {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int HDMI_AUDIOCLK_FREQ ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_hdmi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_hdmi *hdmi)
{
	const unsigned int freqs[] = {
		32000, 44100, 48000, 88200, 96000, 176400, 192000
	};
	unsigned int i;

	for (i = 0; i < FUNC0(freqs); i++) {
		unsigned int f = freqs[i];
		unsigned int eight_half;
		unsigned int delta;
		u32 value;

		if (f > 96000)
			delta = 2;
		else if (f > 48000)
			delta = 6;
		else
			delta = 9;

		eight_half = (8 * HDMI_AUDIOCLK_FREQ) / (f * 128);
		value = FUNC2(eight_half - delta) |
			FUNC1(eight_half + delta);
		FUNC4(hdmi, value, FUNC3(i));
	}
}