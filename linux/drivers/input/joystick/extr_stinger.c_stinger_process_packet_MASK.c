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
struct stinger {unsigned char* data; int /*<<< orphan*/  idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_TL ; 
 int /*<<< orphan*/  BTN_TR ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BTN_Z ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct stinger *stinger)
{
	struct input_dev *dev = stinger->dev;
	unsigned char *data = stinger->data;

	if (!stinger->idx) return;

	FUNC1(dev, BTN_A,	  ((data[0] & 0x20) >> 5));
	FUNC1(dev, BTN_B,	  ((data[0] & 0x10) >> 4));
	FUNC1(dev, BTN_C,	  ((data[0] & 0x08) >> 3));
	FUNC1(dev, BTN_X,	  ((data[0] & 0x04) >> 2));
	FUNC1(dev, BTN_Y,	  ((data[3] & 0x20) >> 5));
	FUNC1(dev, BTN_Z,	  ((data[3] & 0x10) >> 4));
	FUNC1(dev, BTN_TL,     ((data[3] & 0x08) >> 3));
	FUNC1(dev, BTN_TR,     ((data[3] & 0x04) >> 2));
	FUNC1(dev, BTN_SELECT, ((data[3] & 0x02) >> 1));
	FUNC1(dev, BTN_START,   (data[3] & 0x01));

	FUNC0(dev, ABS_X, (data[1] & 0x3F) - ((data[0] & 0x01) << 6));
	FUNC0(dev, ABS_Y, ((data[0] & 0x02) << 5) - (data[2] & 0x3F));

	FUNC2(dev);

	return;
}