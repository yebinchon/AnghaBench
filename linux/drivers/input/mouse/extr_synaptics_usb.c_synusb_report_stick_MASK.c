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
struct synusb {unsigned int* data; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct synusb*) ; 

__attribute__((used)) static void FUNC5(struct synusb *synusb)
{
	struct input_dev *input_dev = synusb->input;
	int x, y;
	unsigned int pressure;

	pressure = synusb->data[6];
	x = (s16)(FUNC0((__be16 *)&synusb->data[2]) << 3) >> 7;
	y = (s16)(FUNC0((__be16 *)&synusb->data[4]) << 3) >> 7;

	if (pressure > 0) {
		FUNC2(input_dev, REL_X, x);
		FUNC2(input_dev, REL_Y, -y);
	}

	FUNC1(input_dev, ABS_PRESSURE, pressure);

	FUNC4(synusb);

	FUNC3(input_dev);
}