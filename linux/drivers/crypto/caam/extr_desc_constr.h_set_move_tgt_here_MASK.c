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

/* Variables and functions */
 int MOVE_OFFSET_MASK ; 
 int MOVE_OFFSET_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int* const) ; 

__attribute__((used)) static inline void FUNC3(u32 * const desc, u32 *move_cmd)
{
	u32 val = FUNC0(*move_cmd);

	val &= ~MOVE_OFFSET_MASK;
	val |= (FUNC2(desc) << (MOVE_OFFSET_SHIFT + 2)) & MOVE_OFFSET_MASK;
	*move_cmd = FUNC1(val);
}