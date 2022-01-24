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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (int,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned nom, unsigned den, unsigned post_div,
				      unsigned fb_div_max, unsigned ref_div_max,
				      unsigned *fb_div, unsigned *ref_div)
{
	/* limit reference * post divider to a maximum */
	ref_div_max = FUNC2(128 / post_div, ref_div_max);

	/* get matching reference and feedback divider */
	*ref_div = FUNC2(FUNC1(FUNC0(den, post_div), 1u), ref_div_max);
	*fb_div = FUNC0(nom * *ref_div * post_div, den);

	/* limit fb divider to its maximum */
	if (*fb_div > fb_div_max) {
		*ref_div = FUNC0(*ref_div * fb_div_max, *fb_div);
		*fb_div = fb_div_max;
	}
}