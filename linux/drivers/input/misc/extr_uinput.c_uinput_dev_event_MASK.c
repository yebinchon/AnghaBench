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
struct uinput_device {size_t head; int /*<<< orphan*/  waitq; TYPE_1__* buff; } ;
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {unsigned int type; unsigned int code; int value; int input_event_usec; int /*<<< orphan*/  input_event_sec; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int UINPUT_BUFFER_SIZE ; 
 struct uinput_device* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev,
			    unsigned int type, unsigned int code, int value)
{
	struct uinput_device	*udev = FUNC0(dev);
	struct timespec64	ts;

	udev->buff[udev->head].type = type;
	udev->buff[udev->head].code = code;
	udev->buff[udev->head].value = value;
	FUNC1(&ts);
	udev->buff[udev->head].input_event_sec = ts.tv_sec;
	udev->buff[udev->head].input_event_usec = ts.tv_nsec / NSEC_PER_USEC;
	udev->head = (udev->head + 1) % UINPUT_BUFFER_SIZE;

	FUNC2(&udev->waitq);

	return 0;
}