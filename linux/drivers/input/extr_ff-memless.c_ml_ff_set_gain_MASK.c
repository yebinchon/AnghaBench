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
typedef  int /*<<< orphan*/  u16 ;
struct ml_device {TYPE_2__* states; int /*<<< orphan*/  gain; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct ml_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF_EFFECT_PLAYING ; 
 int FF_MEMLESS_EFFECTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ml_device*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev, u16 gain)
{
	struct ml_device *ml = dev->ff->private;
	int i;

	ml->gain = gain;

	for (i = 0; i < FF_MEMLESS_EFFECTS; i++)
		FUNC0(FF_EFFECT_PLAYING, &ml->states[i].flags);

	FUNC1(ml);
}