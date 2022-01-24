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
struct vibra_info {int speed; int direction; int /*<<< orphan*/  play_work; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {scalar_t__ direction; TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ EFFECT_DIR_180_DEG ; 
 struct vibra_info* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct input_dev *input, void *data,
		      struct ff_effect *effect)
{
	struct vibra_info *info = FUNC0(input);

	info->speed = effect->u.rumble.strong_magnitude >> 8;
	if (!info->speed)
		info->speed = effect->u.rumble.weak_magnitude >> 9;
	info->direction = effect->direction < EFFECT_DIR_180_DEG ? 0 : 1;
	FUNC1(&info->play_work);
	return 0;
}