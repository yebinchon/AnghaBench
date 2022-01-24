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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct dib9000_state*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dib9000_state *state, u8 cmd, u8 * b, u16 len)
{
	if (!state->platform.risc.fw_is_running)
		return -EIO;

	if (FUNC3(&state->platform.risc.mem_lock) < 0) {
		FUNC2("could not get the lock\n");
		return -EINTR;
	}
	FUNC1(state, cmd | 0x80);
	FUNC0(state, b, len);
	FUNC4(&state->platform.risc.mem_lock);
	return 0;
}