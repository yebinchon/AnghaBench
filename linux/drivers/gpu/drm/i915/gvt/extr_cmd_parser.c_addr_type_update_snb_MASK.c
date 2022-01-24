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
struct parser_exec_state {scalar_t__ buf_type; int /*<<< orphan*/  buf_addr_type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPGTT_BUFFER ; 
 scalar_t__ RING_BUFFER_INSTRUCTION ; 
 int /*<<< orphan*/  FUNC1 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct parser_exec_state *s)
{
	if ((s->buf_type == RING_BUFFER_INSTRUCTION) &&
			(FUNC0(FUNC1(s, 0)) == 1)) {
		s->buf_addr_type = PPGTT_BUFFER;
	}
}