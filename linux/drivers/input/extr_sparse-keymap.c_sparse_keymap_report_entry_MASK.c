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
struct TYPE_2__ {unsigned int value; int /*<<< orphan*/  code; } ;
struct key_entry {int type; TYPE_1__ sw; int /*<<< orphan*/  keycode; int /*<<< orphan*/  code; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
#define  KE_KEY 130 
#define  KE_SW 129 
#define  KE_VSW 128 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

void FUNC4(struct input_dev *dev, const struct key_entry *ke,
				unsigned int value, bool autorelease)
{
	switch (ke->type) {
	case KE_KEY:
		FUNC0(dev, EV_MSC, MSC_SCAN, ke->code);
		FUNC1(dev, ke->keycode, value);
		FUNC3(dev);
		if (value && autorelease) {
			FUNC1(dev, ke->keycode, 0);
			FUNC3(dev);
		}
		break;

	case KE_SW:
		value = ke->sw.value;
		/* fall through */

	case KE_VSW:
		FUNC2(dev, ke->sw.code, value);
		FUNC3(dev);
		break;
	}
}