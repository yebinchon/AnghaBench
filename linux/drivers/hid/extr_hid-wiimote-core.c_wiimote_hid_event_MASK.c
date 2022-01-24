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
typedef  scalar_t__ u8 ;
struct wiiproto_handler {int size; scalar_t__ id; int /*<<< orphan*/  (* func ) (struct wiimote_data*,scalar_t__*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct wiiproto_handler* handlers ; 
 struct wiimote_data* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev, struct hid_report *report,
							u8 *raw_data, int size)
{
	struct wiimote_data *wdata = FUNC0(hdev);
	struct wiiproto_handler *h;
	int i;
	unsigned long flags;

	if (size < 1)
		return -EINVAL;

	FUNC2(&wdata->state.lock, flags);

	for (i = 0; handlers[i].id; ++i) {
		h = &handlers[i];
		if (h->id == raw_data[0] && h->size < size) {
			h->func(wdata, &raw_data[1]);
			break;
		}
	}

	if (!handlers[i].id)
		FUNC1(hdev, "Unhandled report %hhu size %d\n", raw_data[0],
									size);

	FUNC3(&wdata->state.lock, flags);

	return 0;
}