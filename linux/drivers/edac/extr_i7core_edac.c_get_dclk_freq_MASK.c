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
 int DEFAULT_DCLK_FREQ ; 
 int /*<<< orphan*/  decode_dclk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC1(void)
{
	int dclk_freq = 0;

	FUNC0(decode_dclk, (void *)&dclk_freq);

	if (dclk_freq < 1)
		return DEFAULT_DCLK_FREQ;

	return dclk_freq;
}