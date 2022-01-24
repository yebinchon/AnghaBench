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
struct msc {int /*<<< orphan*/  user_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msc*) ; 

__attribute__((used)) static int FUNC2(struct msc *msc)
{
	int count, ret = 0;

	count = FUNC0(&msc->user_count, 0, -1);

	/* > 0: buffer is allocated and has users */
	if (count > 0)
		ret = -EBUSY;
	/* 0: buffer is allocated, no users */
	else if (!count)
		FUNC1(msc);
	/* < 0: no buffer, nothing to do */

	return ret;
}