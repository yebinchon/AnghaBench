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
struct dib8000_state {int symbol_duration; } ;
typedef  enum timeout_mode { ____Placeholder_timeout_mode } timeout_mode ;

/* Variables and functions */
 int SYMBOL_DEPENDENT_ON ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 

__attribute__((used)) static unsigned long FUNC1(struct dib8000_state *state, u32 delay, enum timeout_mode mode)
{
	if (mode == SYMBOL_DEPENDENT_ON)
		delay *= state->symbol_duration;

	return jiffies + FUNC0(delay * 100);
}