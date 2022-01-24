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
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u16 *dbuf, u32 *sbuf,
					   unsigned int pixels,
					   bool swab)
{
	unsigned int x;
	u16 val16;

	for (x = 0; x < pixels; x++) {
		val16 = ((sbuf[x] & 0x00F80000) >> 8) |
			((sbuf[x] & 0x0000FC00) >> 5) |
			((sbuf[x] & 0x000000F8) >> 3);
		if (swab)
			dbuf[x] = FUNC0(val16);
		else
			dbuf[x] = val16;
	}
}