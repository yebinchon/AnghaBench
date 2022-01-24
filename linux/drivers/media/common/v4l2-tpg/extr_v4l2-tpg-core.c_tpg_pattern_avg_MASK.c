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
struct tpg_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct tpg_data const*) ; 

__attribute__((used)) static int FUNC1(const struct tpg_data *tpg,
			   unsigned pat1, unsigned pat2)
{
	unsigned pat_lines = FUNC0(tpg);

	if (pat1 == (pat2 + 1) % pat_lines)
		return pat2;
	if (pat2 == (pat1 + 1) % pat_lines)
		return pat1;
	return -1;
}