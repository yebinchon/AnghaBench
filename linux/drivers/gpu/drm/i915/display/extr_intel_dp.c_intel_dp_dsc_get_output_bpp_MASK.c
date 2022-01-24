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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int DP_DSC_MAX_SMALL_JOINER_RAM_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int* valid_dsc_bpp ; 

__attribute__((used)) static u16 FUNC4(u32 link_clock, u32 lane_count,
				       u32 mode_clock, u32 mode_hdisplay)
{
	u32 bits_per_pixel, max_bpp_small_joiner_ram;
	int i;

	/*
	 * Available Link Bandwidth(Kbits/sec) = (NumberOfLanes)*
	 * (LinkSymbolClock)* 8 * (TimeSlotsPerMTP)
	 * for SST -> TimeSlotsPerMTP is 1,
	 * for MST -> TimeSlotsPerMTP has to be calculated
	 */
	bits_per_pixel = (link_clock * lane_count * 8) /
			 FUNC2(mode_clock);
	FUNC1("Max link bpp: %u\n", bits_per_pixel);

	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
	max_bpp_small_joiner_ram = DP_DSC_MAX_SMALL_JOINER_RAM_BUFFER / mode_hdisplay;
	FUNC1("Max small joiner bpp: %u\n", max_bpp_small_joiner_ram);

	/*
	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
	 * check, output bpp from small joiner RAM check)
	 */
	bits_per_pixel = FUNC3(bits_per_pixel, max_bpp_small_joiner_ram);

	/* Error out if the max bpp is less than smallest allowed valid bpp */
	if (bits_per_pixel < valid_dsc_bpp[0]) {
		FUNC1("Unsupported BPP %u, min %u\n",
			      bits_per_pixel, valid_dsc_bpp[0]);
		return 0;
	}

	/* Find the nearest match in the array of known BPPs from VESA */
	for (i = 0; i < FUNC0(valid_dsc_bpp) - 1; i++) {
		if (bits_per_pixel < valid_dsc_bpp[i + 1])
			break;
	}
	bits_per_pixel = valid_dsc_bpp[i];

	/*
	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
	 * fractional part is 0
	 */
	return bits_per_pixel << 4;
}