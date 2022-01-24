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
typedef  size_t u16 ;
struct sseu_dev_info {int /*<<< orphan*/ * eu_mask; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(const struct sseu_dev_info *sseu)
{
	u16 i, total = 0;

	for (i = 0; i < FUNC0(sseu->eu_mask); i++)
		total += FUNC1(sseu->eu_mask[i]);

	return total;
}