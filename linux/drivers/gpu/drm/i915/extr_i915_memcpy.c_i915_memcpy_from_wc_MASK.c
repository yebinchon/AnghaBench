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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,unsigned long) ; 
 int /*<<< orphan*/  has_movntdqa ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

bool FUNC4(void *dst, const void *src, unsigned long len)
{
	if (FUNC3(((unsigned long)dst | (unsigned long)src | len) & 15))
		return false;

#ifdef CONFIG_AS_MOVNTDQA
	if (static_branch_likely(&has_movntdqa)) {
		if (likely(len))
			__memcpy_ntdqa(dst, src, len);
		return true;
	}
#endif

	return false;
}