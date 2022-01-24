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
struct msc {int burst_len; scalar_t__ reg_base; int /*<<< orphan*/  iter_list; int /*<<< orphan*/  win_list; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  mode; int /*<<< orphan*/  user_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MSC_LEN ; 
 int /*<<< orphan*/  MSC_MODE_MULTI ; 
 scalar_t__ REG_MSU_MSC0CTL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct msc *msc)
{
	FUNC2(&msc->user_count, -1);

	msc->mode = MSC_MODE_MULTI;
	FUNC4(&msc->buf_mutex);
	FUNC0(&msc->win_list);
	FUNC0(&msc->iter_list);

	msc->burst_len =
		(FUNC3(msc->reg_base + REG_MSU_MSC0CTL) & MSC_LEN) >>
		FUNC1(MSC_LEN);

	return 0;
}