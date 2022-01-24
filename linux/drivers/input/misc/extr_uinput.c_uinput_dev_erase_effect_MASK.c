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
struct TYPE_2__ {int effect_id; } ;
struct uinput_request {TYPE_1__ u; int /*<<< orphan*/  code; } ;
struct uinput_device {int dummy; } ;
struct input_dev {int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  UI_FF_ERASE ; 
 struct uinput_device* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uinput_device*,struct uinput_request*) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, int effect_id)
{
	struct uinput_device *udev = FUNC0(dev);
	struct uinput_request request;

	if (!FUNC1(EV_FF, dev->evbit))
		return -ENOSYS;

	request.code = UI_FF_ERASE;
	request.u.effect_id = effect_id;

	return FUNC2(udev, &request);
}