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
struct TYPE_2__ {int* accel_split; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_data*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_data*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*,int const*,int) ; 

__attribute__((used)) static void FUNC3(struct wiimote_data *wdata, const __u8 *payload)
{
	FUNC0(wdata, payload);

	wdata->state.accel_split[0] = payload[2];
	wdata->state.accel_split[1] = (payload[0] >> 1) & (0x10 | 0x20);
	wdata->state.accel_split[1] |= (payload[1] << 1) & (0x40 | 0x80);

	FUNC1(wdata, &payload[3], false);
	FUNC2(wdata, &payload[12], false);
}