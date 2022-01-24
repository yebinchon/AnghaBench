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
struct TYPE_2__ {int /*<<< orphan*/  cmd_read_size; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cmd_read_buf; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  WIIPROTO_REQ_RMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,int,int /*<<< orphan*/ ) ; 

ssize_t FUNC5(struct wiimote_data *wdata, __u32 offset, __u8 *rmem,
								__u8 size)
{
	unsigned long flags;
	ssize_t ret;

	FUNC0(&wdata->state.lock, flags);
	wdata->state.cmd_read_size = size;
	wdata->state.cmd_read_buf = rmem;
	FUNC2(wdata, WIIPROTO_REQ_RMEM, offset & 0xffff);
	FUNC4(wdata, offset, size);
	FUNC1(&wdata->state.lock, flags);

	ret = FUNC3(wdata);

	FUNC0(&wdata->state.lock, flags);
	wdata->state.cmd_read_buf = NULL;
	FUNC1(&wdata->state.lock, flags);

	if (!ret) {
		if (wdata->state.cmd_read_size == 0)
			ret = -EIO;
		else
			ret = wdata->state.cmd_read_size;
	}

	return ret;
}