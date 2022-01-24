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
struct TYPE_2__ {size_t outlen; scalar_t__ outbuf; } ;
struct uverbs_attr_bundle {TYPE_1__ ucore; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  UVERBS_ATTR_CORE_OUT ; 
 int FUNC0 (scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 scalar_t__ FUNC3 (struct uverbs_attr_bundle*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uverbs_attr_bundle*,int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int FUNC5(struct uverbs_attr_bundle *attrs, const void *resp,
			   size_t resp_len)
{
	int ret;

	if (FUNC3(attrs, UVERBS_ATTR_CORE_OUT))
		return FUNC4(
			attrs, UVERBS_ATTR_CORE_OUT, resp, resp_len);

	if (FUNC1(attrs->ucore.outbuf, resp,
			 FUNC2(attrs->ucore.outlen, resp_len)))
		return -EFAULT;

	if (resp_len < attrs->ucore.outlen) {
		/*
		 * Zero fill any extra memory that user
		 * space might have provided.
		 */
		ret = FUNC0(attrs->ucore.outbuf + resp_len,
				 attrs->ucore.outlen - resp_len);
		if (ret)
			return -EFAULT;
	}

	return 0;
}