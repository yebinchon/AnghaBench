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
struct vmw_cmdbuf_man {int /*<<< orphan*/  headers; int /*<<< orphan*/  alloc_queue; int /*<<< orphan*/  lock; } ;
struct vmw_cmdbuf_header {int /*<<< orphan*/  handle; scalar_t__ cb_header; int /*<<< orphan*/  node; scalar_t__ inline_space; struct vmw_cmdbuf_man* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cmdbuf_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_cmdbuf_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vmw_cmdbuf_header *header)
{
	struct vmw_cmdbuf_man *man = header->man;

	FUNC3(&man->lock);

	if (header->inline_space) {
		FUNC4(header);
		return;
	}

	FUNC1(&header->node);
	FUNC5(&man->alloc_queue);
	if (header->cb_header)
		FUNC0(man->headers, header->cb_header,
			      header->handle);
	FUNC2(header);
}