#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct stv {TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct stv*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct stv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct stv *state, u16 reg, u8 mask, u8 val)
{
	int status;
	u8 tmp;

	FUNC0(&state->base->reg_lock);
	status = FUNC2(state, reg, &tmp);
	if (!status)
		status = FUNC3(state, reg, (tmp & ~mask) | (val & mask));
	FUNC1(&state->base->reg_lock);
	return status;
}