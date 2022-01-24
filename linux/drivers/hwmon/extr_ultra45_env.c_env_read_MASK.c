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
struct env {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ REG_ADDR ; 
 scalar_t__ REG_DATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u8 FUNC4(struct env *p, u8 ireg)
{
	u8 ret;

	FUNC1(&p->lock);
	FUNC3(ireg, p->regs + REG_ADDR);
	ret = FUNC0(p->regs + REG_DATA);
	FUNC2(&p->lock);

	return ret;
}