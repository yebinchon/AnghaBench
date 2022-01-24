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
struct vmw_cmdbuf_man {int /*<<< orphan*/  cur_mutex; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct vmw_cmdbuf_man *man, bool interruptible)
{
	if (interruptible) {
		if (FUNC1(&man->cur_mutex))
			return -ERESTARTSYS;
	} else {
		FUNC0(&man->cur_mutex);
	}

	return 0;
}