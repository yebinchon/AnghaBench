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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (scalar_t__* const) ; 

__attribute__((used)) static inline void FUNC3(u32 * const desc, u32 command)
{
	u32 *cmd = FUNC2(desc);

	*cmd = FUNC1(command);

	(*desc) = FUNC1(FUNC0(*desc) + 1);
}