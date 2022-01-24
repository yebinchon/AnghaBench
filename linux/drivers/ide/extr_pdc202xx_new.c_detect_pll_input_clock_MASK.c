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
typedef  int u8 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,...) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 long FUNC6 (unsigned long) ; 

__attribute__((used)) static long FUNC7(unsigned long dma_base)
{
	ktime_t start_time, end_time;
	long start_count, end_count;
	long pll_input, usec_elapsed;
	u8 scr1;

	start_count = FUNC6(dma_base);
	start_time = FUNC2();

	/* Start the test mode */
	FUNC5(0x01, dma_base + 0x01);
	scr1 = FUNC1(dma_base + 0x03);
	FUNC0("scr1[%02X]\n", scr1);
	FUNC5(scr1 | 0x40, dma_base + 0x03);

	/* Let the counter run for 10 ms. */
	FUNC4(10);

	end_count = FUNC6(dma_base);
	end_time = FUNC2();

	/* Stop the test mode */
	FUNC5(0x01, dma_base + 0x01);
	scr1 = FUNC1(dma_base + 0x03);
	FUNC0("scr1[%02X]\n", scr1);
	FUNC5(scr1 & ~0x40, dma_base + 0x03);

	/*
	 * Calculate the input clock in Hz
	 * (the clock counter is 30 bit wide and counts down)
	 */
	usec_elapsed = FUNC3(end_time, start_time);
	pll_input = ((start_count - end_count) & 0x3fffffff) / 10 *
		(10000000 / usec_elapsed);

	FUNC0("start[%ld] end[%ld]\n", start_count, end_count);

	return pll_input;
}