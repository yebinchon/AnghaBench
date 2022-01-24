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
struct hidpp_touchpad_raw_xy {int end_of_frame; int spurious_flag; int finger_count; int button; int /*<<< orphan*/ * fingers; } ;
struct hidpp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hidpp_touchpad_raw_xy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hidpp_device *hidpp_dev,
		u8 *data, struct hidpp_touchpad_raw_xy *raw_xy)
{
	FUNC1(raw_xy, 0, sizeof(struct hidpp_touchpad_raw_xy));
	raw_xy->end_of_frame = data[8] & 0x01;
	raw_xy->spurious_flag = (data[8] >> 1) & 0x01;
	raw_xy->finger_count = data[15] & 0x0f;
	raw_xy->button = (data[8] >> 2) & 0x01;

	if (raw_xy->finger_count) {
		FUNC0(&data[2], &raw_xy->fingers[0]);
		FUNC0(&data[9], &raw_xy->fingers[1]);
	}
}