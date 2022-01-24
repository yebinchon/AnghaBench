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
struct wacom_wac {unsigned char* data; int /*<<< orphan*/ * tool; struct input_dev* pad_input; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int PAD_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct wacom_wac *wacom)
{
	struct input_dev *pad_input = wacom->pad_input;
	unsigned char *data = wacom->data;

	int buttons = data[282] | ((data[281] & 0x40) << 2);
	int ring = data[285] & 0x7F;
	bool ringstatus = data[285] & 0x80;
	bool prox = buttons || ringstatus;

	/* Fix touchring data: userspace expects 0 at left and increasing clockwise */
	ring = 71 - ring;
	ring += 3*72/16;
	if (ring > 71)
		ring -= 72;

	FUNC4(pad_input, 9, buttons);

	FUNC1(pad_input, ABS_WHEEL, ringstatus ? ring : 0);

	FUNC2(pad_input, wacom->tool[1], prox ? 1 : 0);
	FUNC1(pad_input, ABS_MISC, prox ? PAD_DEVICE_ID : 0);
	FUNC0(pad_input, EV_MSC, MSC_SERIAL, 0xffffffff);

	FUNC3(pad_input);
}