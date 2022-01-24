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
struct iforce_core_effect {int /*<<< orphan*/  flags; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;
struct ff_effect {size_t id; int type; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
#define  FF_CONSTANT 131 
 int /*<<< orphan*/  FF_CORE_IS_USED ; 
 int /*<<< orphan*/  FF_CORE_UPDATE ; 
#define  FF_DAMPER 130 
#define  FF_PERIODIC 129 
#define  FF_SPRING 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iforce*,struct ff_effect*,struct ff_effect*) ; 
 int FUNC2 (struct iforce*,struct ff_effect*,struct ff_effect*) ; 
 int FUNC3 (struct iforce*,struct ff_effect*,struct ff_effect*) ; 
 struct iforce* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct input_dev *dev, struct ff_effect *effect, struct ff_effect *old)
{
	struct iforce *iforce = FUNC4(dev);
	struct iforce_core_effect *core_effect = &iforce->core_effects[effect->id];
	int ret;

	if (FUNC0(FF_CORE_IS_USED, core_effect->flags)) {
		/* Check the effect is not already being updated */
		if (FUNC6(FF_CORE_UPDATE, core_effect->flags))
			return -EAGAIN;
	}

/*
 * Upload the effect
 */
	switch (effect->type) {
	case FF_PERIODIC:
		ret = FUNC3(iforce, effect, old);
		break;

	case FF_CONSTANT:
		ret = FUNC2(iforce, effect, old);
		break;

	case FF_SPRING:
	case FF_DAMPER:
		ret = FUNC1(iforce, effect, old);
		break;

	default:
		return -EINVAL;
	}

	if (ret == 0) {
		/* A packet was sent, forbid new updates until we are notified
		 * that the packet was updated
		 */
		FUNC5(FF_CORE_UPDATE, core_effect->flags);
	}
	return ret;
}