#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct psmouse {struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct alps_fields {scalar_t__ pressure; int /*<<< orphan*/  middle; int /*<<< orphan*/  right; int /*<<< orphan*/  left; TYPE_2__* mt; TYPE_1__ st; } ;
struct alps_data {int second_touch; struct alps_fields f; } ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct psmouse *psmouse, int fingers)
{
	struct alps_data *priv = psmouse->private;
	struct input_dev *dev = psmouse->dev;
	struct alps_fields *f = &priv->f;

	/* Use st data when we don't have mt data */
	if (fingers < 2) {
		f->mt[0].x = f->st.x;
		f->mt[0].y = f->st.y;
		fingers = f->pressure > 0 ? 1 : 0;
		priv->second_touch = -1;
	}

	if (fingers >= 1)
		FUNC0(dev, 0, f->mt[0].x, f->mt[0].y);
	if (fingers >= 2)
		FUNC0(dev, 1, f->mt[1].x, f->mt[1].y);
	FUNC2(dev);

	FUNC1(dev, fingers);

	FUNC4(dev, BTN_LEFT, f->left);
	FUNC4(dev, BTN_RIGHT, f->right);
	FUNC4(dev, BTN_MIDDLE, f->middle);

	FUNC3(dev, ABS_PRESSURE, f->pressure);

	FUNC5(dev);
}