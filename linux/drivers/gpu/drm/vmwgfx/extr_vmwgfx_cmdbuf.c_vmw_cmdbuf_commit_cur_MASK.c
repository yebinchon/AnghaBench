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
struct vmw_cmdbuf_man {size_t cur_pos; int /*<<< orphan*/  cur_mutex; struct vmw_cmdbuf_header* cur; } ;
struct vmw_cmdbuf_header {size_t reserved; TYPE_1__* cb_header; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_CB_FLAG_DX_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_cmdbuf_man*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_cmdbuf_man*) ; 

__attribute__((used)) static void FUNC4(struct vmw_cmdbuf_man *man,
				  size_t size, bool flush)
{
	struct vmw_cmdbuf_header *cur = man->cur;

	FUNC2(&man->cur_mutex);

	FUNC0(size > cur->reserved);
	man->cur_pos += size;
	if (!size)
		cur->cb_header->flags &= ~SVGA_CB_FLAG_DX_CONTEXT;
	if (flush)
		FUNC1(man);
	FUNC3(man);
}