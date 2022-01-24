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
struct vmw_cmdbuf_man {scalar_t__ cur_pos; struct vmw_cmdbuf_header* cur; int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_mutex; } ;
struct vmw_cmdbuf_header {TYPE_1__* cb_header; } ;
struct TYPE_2__ {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_CB_CONTEXT_0 ; 
 int /*<<< orphan*/  FUNC0 (struct vmw_cmdbuf_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vmw_cmdbuf_man *man)
{
	struct vmw_cmdbuf_header *cur = man->cur;

	FUNC1(&man->cur_mutex);

	if (!cur)
		return;

	FUNC2(&man->lock);
	if (man->cur_pos == 0) {
		FUNC0(cur);
		goto out_unlock;
	}

	man->cur->cb_header->length = man->cur_pos;
	FUNC4(man, man->cur, SVGA_CB_CONTEXT_0);
out_unlock:
	FUNC3(&man->lock);
	man->cur = NULL;
	man->cur_pos = 0;
}