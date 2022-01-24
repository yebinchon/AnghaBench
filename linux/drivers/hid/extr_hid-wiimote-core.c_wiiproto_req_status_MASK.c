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
struct wiimote_data {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 scalar_t__ WIIPROTO_REQ_SREQ ; 
 int /*<<< orphan*/  FUNC0 (struct wiimote_data*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_data*,scalar_t__*) ; 

void FUNC2(struct wiimote_data *wdata)
{
	__u8 cmd[2];

	cmd[0] = WIIPROTO_REQ_SREQ;
	cmd[1] = 0;

	FUNC1(wdata, &cmd[1]);
	FUNC0(wdata, cmd, sizeof(cmd));
}