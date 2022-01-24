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
typedef  int u8 ;
struct input_dev {int dummy; } ;
struct elan_drvdata {int* prev_report; struct input_dev* input; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int ELAN_MAX_FINGERS ; 
 int ELAN_MT_FIRST_FINGER ; 
 int ELAN_MT_SECOND_FINGER ; 
 int ELAN_SINGLE_FINGER ; 
 int /*<<< orphan*/  FUNC1 (struct elan_drvdata*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

__attribute__((used)) static void FUNC6(struct elan_drvdata *drvdata, u8 *data)
{
	int i;
	struct input_dev *input = drvdata->input;

	/*
	 * There is 3 types of reports: for single touch,
	 * for multitouch - first finger and for multitouch - second finger
	 *
	 * packet structure for ELAN_SINGLE_FINGER and ELAN_MT_FIRST_FINGER:
	 *
	 * byte 1: 1   0   0   0   0   0   0   1  // 0x81 or 0x82
	 * byte 2: 0   0   0   0   0   0   0   0  // looks like unused
	 * byte 3: f5  f4  f3  f2  f1  0   0   L
	 * byte 4: x12 x11 x10 x9  0?  y11 y10 y9
	 * byte 5: x8  x7  x6  x5  x4  x3  x2  x1
	 * byte 6: y8  y7  y6  y5  y4  y3  y2  y1
	 * byte 7: sy4 sy3 sy2 sy1 sx4 sx3 sx2 sx1
	 * byte 8: p8  p7  p6  p5  p4  p3  p2  p1
	 *
	 * packet structure for ELAN_MT_SECOND_FINGER:
	 *
	 * byte 1: 1   0   0   0   0   0   1   1  // 0x83
	 * byte 2: x12 x11 x10 x9  0   y11 y10 y9
	 * byte 3: x8  x7  x6  x5  x4  x3  x2  x1
	 * byte 4: y8  y7  y6  y5  y4  y3  y2  y1
	 * byte 5: sy4 sy3 sy2 sy1 sx4 sx3 sx2 sx1
	 * byte 6: p8  p7  p6  p5  p4  p3  p2  p1
	 * byte 7: 0   0   0   0   0   0   0   0
	 * byte 8: 0   0   0   0   0   0   0   0
	 *
	 * f5-f1: finger touch bits
	 * L: clickpad button
	 * sy / sx: finger width / height expressed in traces, the total number
	 *          of traces can be queried by doing a HID_REQ_SET_REPORT
	 *          { 0x0d, 0x05, 0x03, 0x05, 0x01 } followed by a GET, in the
	 *          returned buf, buf[3]=no-x-traces, buf[4]=no-y-traces.
	 * p: pressure
	 */

	if (data[0] == ELAN_SINGLE_FINGER) {
		for (i = 0; i < ELAN_MAX_FINGERS; i++) {
			if (data[2] & FUNC0(i + 3))
				FUNC1(drvdata, data + 3, i);
			else
				FUNC1(drvdata, NULL, i);
		}
		FUNC3(input, BTN_LEFT, data[2] & 0x01);
	}
	/*
	 * When touched with two fingers Elan touchpad will emit two HID reports
	 * first is ELAN_MT_FIRST_FINGER and second is ELAN_MT_SECOND_FINGER
	 * we will save ELAN_MT_FIRST_FINGER report and wait for
	 * ELAN_MT_SECOND_FINGER to finish multitouch
	 */
	if (data[0] == ELAN_MT_FIRST_FINGER) {
		FUNC5(drvdata->prev_report, data,
		       sizeof(drvdata->prev_report));
		return;
	}

	if (data[0] == ELAN_MT_SECOND_FINGER) {
		int first = 0;
		u8 *prev_report = drvdata->prev_report;

		if (prev_report[0] != ELAN_MT_FIRST_FINGER)
			return;

		for (i = 0; i < ELAN_MAX_FINGERS; i++) {
			if (prev_report[2] & FUNC0(i + 3)) {
				if (!first) {
					first = 1;
					FUNC1(drvdata, prev_report + 3, i);
				} else {
					FUNC1(drvdata, data + 1, i);
				}
			} else {
				FUNC1(drvdata, NULL, i);
			}
		}
		FUNC3(input, BTN_LEFT, prev_report[2] & 0x01);
	}

	FUNC2(input);
	FUNC4(input);
}