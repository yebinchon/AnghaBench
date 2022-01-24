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
typedef  unsigned int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (unsigned int const,unsigned int) ; 

__attribute__((used)) static void FUNC1(u32 width, u32 cpp, u32 stride,
				 u8 *burstsize, u8 *num_bursts)
{
	const unsigned int width_bytes = width * cpp;
	unsigned int npb, bursts;

	/* Maximum number of pixels per burst without overshooting stride */
	for (npb = 64 / cpp; npb > 0; --npb) {
		if (FUNC0(width_bytes, npb * cpp) <= stride)
			break;
	}
	*burstsize = npb;

	/* Maximum number of consecutive bursts without overshooting stride */
	for (bursts = 8; bursts > 1; bursts /= 2) {
		if (FUNC0(width_bytes, npb * cpp * bursts) <= stride)
			break;
	}
	*num_bursts = bursts;
}