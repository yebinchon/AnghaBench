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
struct sseu_dev_info {int /*<<< orphan*/ * subslice_mask; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC2(const struct sseu_dev_info *sseu)
{
	unsigned int i, total = 0;

	for (i = 0; i < FUNC0(sseu->subslice_mask); i++)
		total += FUNC1(sseu->subslice_mask[i]);

	return total;
}