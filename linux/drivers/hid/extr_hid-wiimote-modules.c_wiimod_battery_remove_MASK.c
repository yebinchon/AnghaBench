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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
struct wiimote_data {TYPE_1__ battery_desc; int /*<<< orphan*/  battery; } ;
struct wiimod_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct wiimod_ops *ops,
				  struct wiimote_data *wdata)
{
	if (!wdata->battery_desc.name)
		return;

	FUNC1(wdata->battery);
	FUNC0(wdata->battery_desc.name);
	wdata->battery_desc.name = NULL;
}