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
typedef  scalar_t__ uint32_t ;
struct vmw_sw_context {void* buf_start; } ;
struct vmw_private {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct vmw_private*,struct vmw_sw_context*,void*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct vmw_private *dev_priv,
			     struct vmw_sw_context *sw_context, void *buf,
			     uint32_t size)
{
	int32_t cur_size = size;
	int ret;

	sw_context->buf_start = buf;

	while (cur_size > 0) {
		size = cur_size;
		ret = FUNC2(dev_priv, sw_context, buf, &size);
		if (FUNC1(ret != 0))
			return ret;
		buf = (void *)((unsigned long) buf + size);
		cur_size -= size;
	}

	if (FUNC1(cur_size != 0)) {
		FUNC0("Command verifier out of sync.\n");
		return -EINVAL;
	}

	return 0;
}