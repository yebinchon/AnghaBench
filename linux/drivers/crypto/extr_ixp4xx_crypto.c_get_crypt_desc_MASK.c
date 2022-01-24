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
struct crypt_ctl {scalar_t__ ctl_flags; } ;

/* Variables and functions */
 scalar_t__ CTL_FLAG_UNUSED ; 
 scalar_t__ CTL_FLAG_USED ; 
 int NPE_QLEN ; 
 struct crypt_ctl* crypt_virt ; 
 int /*<<< orphan*/  desc_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct crypt_ctl *FUNC4(void)
{
	int i;
	static int idx = 0;
	unsigned long flags;

	FUNC1(&desc_lock, flags);

	if (FUNC3(!crypt_virt))
		FUNC0();
	if (FUNC3(!crypt_virt)) {
		FUNC2(&desc_lock, flags);
		return NULL;
	}
	i = idx;
	if (crypt_virt[i].ctl_flags == CTL_FLAG_UNUSED) {
		if (++idx >= NPE_QLEN)
			idx = 0;
		crypt_virt[i].ctl_flags = CTL_FLAG_USED;
		FUNC2(&desc_lock, flags);
		return crypt_virt +i;
	} else {
		FUNC2(&desc_lock, flags);
		return NULL;
	}
}