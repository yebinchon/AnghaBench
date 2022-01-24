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
struct pm8xxx_vib {int speed; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;

/* Variables and functions */
 struct pm8xxx_vib* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev, void *data,
				  struct ff_effect *effect)
{
	struct pm8xxx_vib *vib = FUNC0(dev);

	vib->speed = effect->u.rumble.strong_magnitude >> 8;
	if (!vib->speed)
		vib->speed = effect->u.rumble.weak_magnitude >> 9;

	FUNC1(&vib->work);

	return 0;
}