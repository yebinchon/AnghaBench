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
struct parser_exec_state {int ring_id; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int scan_nonprivbb; } ;

/* Variables and functions */
 int FUNC0 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct parser_exec_state *s)
{
	/* Decide privilege based on address space */
	if (FUNC0(s, 0) & (1 << 8) &&
			!(s->vgpu->scan_nonprivbb & (1 << s->ring_id)))
		return 0;
	return 1;
}