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
struct input_mt {int num_slots; int /*<<< orphan*/ * slots; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_mt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev, struct input_mt *mt)
{
	int i;

	for (i = 0; i < mt->num_slots; i++) {
		if (!FUNC1(mt, &mt->slots[i])) {
			FUNC2(dev, i);
			FUNC0(dev, EV_ABS, ABS_MT_TRACKING_ID, -1);
		}
	}
}