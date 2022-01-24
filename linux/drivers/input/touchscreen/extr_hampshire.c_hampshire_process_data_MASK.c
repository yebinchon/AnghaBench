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
struct input_dev {int dummy; } ;
struct hampshire {scalar_t__ idx; int /*<<< orphan*/  data; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ HAMPSHIRE_FORMAT_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct hampshire *phampshire)
{
	struct input_dev *dev = phampshire->dev;

	if (HAMPSHIRE_FORMAT_LENGTH == ++phampshire->idx) {
		FUNC3(dev, ABS_X, FUNC1(phampshire->data));
		FUNC3(dev, ABS_Y, FUNC2(phampshire->data));
		FUNC4(dev, BTN_TOUCH,
				 FUNC0(phampshire->data));
		FUNC5(dev);

		phampshire->idx = 0;
	}
}