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
typedef  int /*<<< orphan*/  u32 ;
struct parser_exec_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MI_NOOP ; 
 int /*<<< orphan*/  FUNC0 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser_exec_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parser_exec_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct parser_exec_state *s)
{
	u32 cmd = FUNC1(s, 0);

	if (!FUNC2(cmd))
		return 0;

	FUNC3(s, FUNC0(s, 0), MI_NOOP);
	return 0;
}