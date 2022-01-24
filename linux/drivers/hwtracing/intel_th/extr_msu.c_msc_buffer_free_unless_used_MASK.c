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
struct msc {int /*<<< orphan*/  buf_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct msc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct msc *msc)
{
	int ret;

	FUNC1(&msc->buf_mutex);
	ret = FUNC0(msc);
	FUNC2(&msc->buf_mutex);

	return ret;
}