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
struct vmw_cmdbuf_man {int dummy; } ;
struct vmw_cmdbuf_header {void* cmd; TYPE_1__* cb_header; int /*<<< orphan*/  list; struct vmw_cmdbuf_man* man; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVGA_CB_STATUS_NONE ; 
 size_t VMW_CMDBUF_INLINE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cmdbuf_header*) ; 
 struct vmw_cmdbuf_header* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,size_t) ; 
 int FUNC5 (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,size_t,int) ; 

void *FUNC6(struct vmw_cmdbuf_man *man,
		       size_t size, bool interruptible,
		       struct vmw_cmdbuf_header **p_header)
{
	struct vmw_cmdbuf_header *header;
	int ret = 0;

	*p_header = NULL;

	header = FUNC3(sizeof(*header), GFP_KERNEL);
	if (!header)
		return FUNC0(-ENOMEM);

	if (size <= VMW_CMDBUF_INLINE_SIZE)
		ret = FUNC4(man, header, size);
	else
		ret = FUNC5(man, header, size, interruptible);

	if (ret) {
		FUNC2(header);
		return FUNC0(ret);
	}

	header->man = man;
	FUNC1(&header->list);
	header->cb_header->status = SVGA_CB_STATUS_NONE;
	*p_header = header;

	return header->cmd;
}