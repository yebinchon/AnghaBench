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
struct input_dev {int /*<<< orphan*/  dev; } ;
struct dc_kbd {int* keycode; int* new; int* old; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 void* FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

__attribute__((used)) static void FUNC6(struct dc_kbd *kbd)
{
	struct input_dev *dev = kbd->dev;
	void *ptr;
	int code, keycode;
	int i;

	for (i = 0; i < 8; i++) {
		code = i + 224;
		keycode = kbd->keycode[code];
		FUNC1(dev, EV_MSC, MSC_SCAN, code);
		FUNC2(dev, keycode, (kbd->new[0] >> i) & 1);
	}

	for (i = 2; i < 8; i++) {
		ptr = FUNC4(kbd->new + 2, kbd->old[i], 6);
		code = kbd->old[i];
		if (code > 3 && ptr == NULL) {
			keycode = kbd->keycode[code];
			if (keycode) {
				FUNC1(dev, EV_MSC, MSC_SCAN, code);
				FUNC2(dev, keycode, 0);
			} else
				FUNC0(&dev->dev,
					"Unknown key (scancode %#x) released.",
					code);
		}
		ptr = FUNC4(kbd->old + 2, kbd->new[i], 6);
		code = kbd->new[i];
		if (code > 3 && ptr) {
			keycode = kbd->keycode[code];
			if (keycode) {
				FUNC1(dev, EV_MSC, MSC_SCAN, code);
				FUNC2(dev, keycode, 1);
			} else
				FUNC0(&dev->dev,
					"Unknown key (scancode %#x) pressed.",
					code);
		}
	}
	FUNC3(dev);
	FUNC5(kbd->old, kbd->new, 8);
}