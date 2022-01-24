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

/* Variables and functions */
 int FUNC0 (int,int) ; 

int
FUNC1(int pixel_clock, int bpp)
{
	/* pixel_clock is in kHz, divide bpp by 8 for bit to Byte conversion */
	return FUNC0(pixel_clock * bpp, 8);
}