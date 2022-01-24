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
struct TYPE_2__ {scalar_t__ cmd_err; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WIIPROTO_REQ_WMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC5(struct wiimote_data *wdata, __u32 offset,
						const __u8 *wmem, __u8 size)
{
	unsigned long flags;
	int ret;

	FUNC0(&wdata->state.lock, flags);
	FUNC2(wdata, WIIPROTO_REQ_WMEM, 0);
	FUNC4(wdata, offset, wmem, size);
	FUNC1(&wdata->state.lock, flags);

	ret = FUNC3(wdata);
	if (!ret && wdata->state.cmd_err)
		ret = -EIO;

	return ret;
}