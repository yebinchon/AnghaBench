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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int PRIORITY_MASK ; 
 scalar_t__ REG_IPC_OFFSET ; 
 scalar_t__ evic_base ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(int irq, int priority)
{
	u32 reg, shift;

	reg = irq / 4;
	shift = (irq % 4) * 8;

	FUNC2(PRIORITY_MASK << shift,
		evic_base + FUNC0(REG_IPC_OFFSET + reg * 0x10));
	FUNC2(priority << shift,
		evic_base + FUNC1(REG_IPC_OFFSET + reg * 0x10));
}