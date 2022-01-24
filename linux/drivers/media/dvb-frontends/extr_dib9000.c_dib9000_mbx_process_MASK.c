#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  mbx_lock; int /*<<< orphan*/  fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dib9000_state*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dib9000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dib9000_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dib9000_state *state, u16 attr)
{
	int ret = 0;

	if (!state->platform.risc.fw_is_running)
		return -1;

	if (FUNC4(&state->platform.risc.mbx_lock) < 0) {
		FUNC3("could not get the lock\n");
		return -1;
	}

	if (FUNC0(state, 1, attr))	/* 1=RiscB */
		ret = FUNC1(state, attr);

	FUNC2(state, 1229, attr);	/* Clear the IRQ */
/*      if (tmp) */
/*              dprintk( "cleared IRQ: %x\n", tmp); */
	FUNC5(&state->platform.risc.mbx_lock);

	return ret;
}