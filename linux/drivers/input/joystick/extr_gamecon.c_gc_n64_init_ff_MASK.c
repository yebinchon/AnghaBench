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
struct gc_subdev {int idx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gc_n64_play_effect ; 
 int FUNC0 (struct input_dev*,struct gc_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_subdev*) ; 
 struct gc_subdev* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, int i)
{
	struct gc_subdev *sdev;
	int err;

	sdev = FUNC3(sizeof(*sdev), GFP_KERNEL);
	if (!sdev)
		return -ENOMEM;

	sdev->idx = i;

	FUNC1(dev, EV_FF, FF_RUMBLE);

	err = FUNC0(dev, sdev, gc_n64_play_effect);
	if (err) {
		FUNC2(sdev);
		return err;
	}

	return 0;
}