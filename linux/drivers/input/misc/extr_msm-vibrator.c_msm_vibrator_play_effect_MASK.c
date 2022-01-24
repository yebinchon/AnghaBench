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
struct msm_vibrator {scalar_t__ magnitude; int /*<<< orphan*/  worker; int /*<<< orphan*/  mutex; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ strong_magnitude; scalar_t__ weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;

/* Variables and functions */
 struct msm_vibrator* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, void *data,
				    struct ff_effect *effect)
{
	struct msm_vibrator *vibrator = FUNC0(dev);

	FUNC1(&vibrator->mutex);

	if (effect->u.rumble.strong_magnitude > 0)
		vibrator->magnitude = effect->u.rumble.strong_magnitude;
	else
		vibrator->magnitude = effect->u.rumble.weak_magnitude;

	FUNC2(&vibrator->mutex);

	FUNC3(&vibrator->worker);

	return 0;
}