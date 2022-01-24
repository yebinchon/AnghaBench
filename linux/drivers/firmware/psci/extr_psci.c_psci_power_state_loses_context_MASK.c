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
typedef  int const u32 ;

/* Variables and functions */
 int PSCI_0_2_POWER_STATE_TYPE_MASK ; 
 int PSCI_1_0_EXT_POWER_STATE_TYPE_MASK ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline bool FUNC1(u32 state)
{
	const u32 mask = FUNC0() ?
					PSCI_1_0_EXT_POWER_STATE_TYPE_MASK :
					PSCI_0_2_POWER_STATE_TYPE_MASK;

	return state & mask;
}