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
struct input_dev {int dummy; } ;
struct adi {char* abs; short* key; scalar_t__ ret; scalar_t__ length; int id; int axes10; int axes8; int buttons; int pad; int hats; struct input_dev* dev; } ;
struct TYPE_2__ {int x; int y; } ;

/* Variables and functions */
 int FUNC0 (struct adi*,int) ; 
 TYPE_1__* adi_hat_to_axis ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static int FUNC4(struct adi *adi)
{
	struct input_dev *dev = adi->dev;
	char *abs = adi->abs;
	short *key = adi->key;
	int i, t;

	if (adi->ret < adi->length || adi->id != (FUNC0(adi, 4) | (FUNC0(adi, 4) << 4)))
		return -1;

	for (i = 0; i < adi->axes10; i++)
		FUNC1(dev, *abs++, FUNC0(adi, 10));

	for (i = 0; i < adi->axes8; i++)
		FUNC1(dev, *abs++, FUNC0(adi, 8));

	for (i = 0; i < adi->buttons && i < 63; i++) {
		if (i == adi->pad) {
			t = FUNC0(adi, 4);
			FUNC1(dev, *abs++, ((t >> 2) & 1) - ( t       & 1));
			FUNC1(dev, *abs++, ((t >> 1) & 1) - ((t >> 3) & 1));
		}
		FUNC2(dev, *key++, FUNC0(adi, 1));
	}

	for (i = 0; i < adi->hats; i++) {
		if ((t = FUNC0(adi, 4)) > 8) t = 0;
		FUNC1(dev, *abs++, adi_hat_to_axis[t].x);
		FUNC1(dev, *abs++, adi_hat_to_axis[t].y);
	}

	for (i = 63; i < adi->buttons; i++)
		FUNC2(dev, *key++, FUNC0(adi, 1));

	FUNC3(dev);

	return 0;
}