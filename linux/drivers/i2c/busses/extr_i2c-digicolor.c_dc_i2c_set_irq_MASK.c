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
struct dc_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ II_INTENABLE ; 
 scalar_t__ II_INTFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct dc_i2c *i2c, int enable)
{
	if (enable)
		FUNC0(1, i2c->regs + II_INTFLAG_CLEAR);
	FUNC0(!!enable, i2c->regs + II_INTENABLE);
}