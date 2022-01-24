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
struct sdma_engine {int /*<<< orphan*/  ahg_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sdma_engine*,int) ; 

void FUNC2(struct sdma_engine *sde, int ahg_index)
{
	if (!sde)
		return;
	FUNC1(sde, ahg_index);
	if (ahg_index < 0 || ahg_index > 31)
		return;
	FUNC0(ahg_index, &sde->ahg_bits);
}