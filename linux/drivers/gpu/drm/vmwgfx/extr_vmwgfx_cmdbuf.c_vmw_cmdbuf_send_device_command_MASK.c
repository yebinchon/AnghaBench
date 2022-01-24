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
struct vmw_cmdbuf_man {int /*<<< orphan*/  lock; } ;
struct vmw_cmdbuf_header {int /*<<< orphan*/  cb_context; TYPE_1__* cb_header; } ;
struct TYPE_2__ {size_t length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  SVGA_CB_CONTEXT_DEVICE ; 
 int SVGA_CB_STATUS_COMPLETED ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct vmw_cmdbuf_man*,size_t,int,struct vmw_cmdbuf_header**) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_cmdbuf_header*) ; 
 int FUNC8 (struct vmw_cmdbuf_header*) ; 

__attribute__((used)) static int FUNC9(struct vmw_cmdbuf_man *man,
					  const void *command,
					  size_t size)
{
	struct vmw_cmdbuf_header *header;
	int status;
	void *cmd = FUNC6(man, size, false, &header);

	if (FUNC1(cmd))
		return FUNC2(cmd);

	FUNC3(cmd, command, size);
	header->cb_header->length = size;
	header->cb_context = SVGA_CB_CONTEXT_DEVICE;
	FUNC4(&man->lock);
	status = FUNC8(header);
	FUNC5(&man->lock);
	FUNC7(header);

	if (status != SVGA_CB_STATUS_COMPLETED) {
		FUNC0("Device context command failed with status %d\n",
			  status);
		return -EINVAL;
	}

	return 0;
}