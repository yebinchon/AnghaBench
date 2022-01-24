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
struct stm_source_device {int /*<<< orphan*/  link; } ;
struct stm_device {int /*<<< orphan*/  link_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct stm_source_device*,struct stm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stm_source_srcu ; 

__attribute__((used)) static void FUNC6(struct stm_source_device *src)
{
	struct stm_device *stm;
	int idx, ret;

retry:
	idx = FUNC4(&stm_source_srcu);
	/*
	 * The stm device will be valid for the duration of this
	 * read section, but the link may change before we grab
	 * the src::link_lock in __stm_source_link_drop().
	 */
	stm = FUNC3(src->link, &stm_source_srcu);

	ret = 0;
	if (stm) {
		FUNC1(&stm->link_mutex);
		ret = FUNC0(src, stm);
		FUNC2(&stm->link_mutex);
	}

	FUNC5(&stm_source_srcu, idx);

	/* if it did change, retry */
	if (ret == -EAGAIN)
		goto retry;
}