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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long base, u8 reg, u8 bit)
{
	u8 val;

	val = FUNC1(base, reg);
	val |= FUNC0(bit);
	FUNC2(base, reg, val);
}