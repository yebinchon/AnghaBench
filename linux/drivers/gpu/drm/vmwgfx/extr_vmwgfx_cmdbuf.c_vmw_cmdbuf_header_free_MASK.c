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
struct vmw_cmdbuf_man {int /*<<< orphan*/  lock; } ;
struct vmw_cmdbuf_header {scalar_t__ inline_space; struct vmw_cmdbuf_man* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_cmdbuf_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_cmdbuf_header*) ; 

void FUNC4(struct vmw_cmdbuf_header *header)
{
	struct vmw_cmdbuf_man *man = header->man;

	/* Avoid locking if inline_space */
	if (header->inline_space) {
		FUNC3(header);
		return;
	}
	FUNC1(&man->lock);
	FUNC0(header);
	FUNC2(&man->lock);
}