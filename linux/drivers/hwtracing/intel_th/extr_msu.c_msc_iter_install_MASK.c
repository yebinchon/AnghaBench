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
struct msc_iter {int /*<<< orphan*/  entry; struct msc* msc; } ;
struct msc {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  iter_list; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct msc_iter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct msc_iter*) ; 
 struct msc_iter* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct msc_iter *FUNC6(struct msc *msc)
{
	struct msc_iter *iter;

	iter = FUNC2(sizeof(*iter), GFP_KERNEL);
	if (!iter)
		return FUNC0(-ENOMEM);

	FUNC4(&msc->buf_mutex);

	/*
	 * Reading and tracing are mutually exclusive; if msc is
	 * enabled, open() will fail; otherwise existing readers
	 * will prevent enabling the msc and the rest of fops don't
	 * need to worry about it.
	 */
	if (msc->enabled) {
		FUNC1(iter);
		iter = FUNC0(-EBUSY);
		goto unlock;
	}

	iter->msc = msc;

	FUNC3(&iter->entry, &msc->iter_list);
unlock:
	FUNC5(&msc->buf_mutex);

	return iter;
}