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
struct TYPE_2__ {scalar_t__ mp; } ;
struct wiimote_data {int /*<<< orphan*/  timer; TYPE_1__ state; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 int FUNC4 (struct wiimote_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC8(struct wiimote_data *wdata)
{
	bool mp;
	__u8 mpdata[6];

	FUNC2(wdata);
	FUNC3(wdata);
	mp = FUNC4(wdata, mpdata);
	FUNC5(wdata);

	/* load/unload MP module if it changed */
	if (mp) {
		if (!wdata->state.mp) {
			FUNC0(wdata->hdev, "detected extension: Nintendo Wii Motion Plus\n");
			FUNC6(wdata);
		}
	} else if (wdata->state.mp) {
		FUNC7(wdata);
	}

	FUNC1(&wdata->timer, jiffies + HZ * 4);
}