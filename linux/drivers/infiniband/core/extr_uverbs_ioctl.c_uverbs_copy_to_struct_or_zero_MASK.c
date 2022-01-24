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
struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {size_t len; int /*<<< orphan*/  data; } ;
struct uverbs_attr {TYPE_1__ ptr_attr; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct uverbs_attr* FUNC2 (struct uverbs_attr_bundle const*,size_t) ; 
 int FUNC3 (struct uverbs_attr_bundle const*,size_t,void const*,size_t) ; 

int FUNC4(const struct uverbs_attr_bundle *bundle,
				  size_t idx, const void *from, size_t size)
{
	const struct uverbs_attr *attr = FUNC2(bundle, idx);

	if (size < attr->ptr_attr.len) {
		if (FUNC0(FUNC1(attr->ptr_attr.data) + size,
			       attr->ptr_attr.len - size))
			return -EFAULT;
	}
	return FUNC3(bundle, idx, from, size);
}