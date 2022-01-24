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
struct TYPE_2__ {scalar_t__ cmd_count; int /*<<< orphan*/  cmds; int /*<<< orphan*/ * backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ req_queue ; 
 int /*<<< orphan*/  req_queue_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	ret = FUNC1();
	if (ret) {
		FUNC4("Cannot load: there are no available CCPs\n");
		return ret;
	}

	FUNC5(&req_queue_lock);
	FUNC0(&req_queue.cmds);
	req_queue.backlog = &req_queue.cmds;
	req_queue.cmd_count = 0;

	ret = FUNC2();
	if (ret)
		FUNC3();

	return ret;
}