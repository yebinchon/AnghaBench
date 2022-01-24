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
struct tp_finger {int /*<<< orphan*/  origin; int /*<<< orphan*/  tool_major; int /*<<< orphan*/  touch_major; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int max; } ;
struct TYPE_3__ {int max; } ;
struct bcm5974_config {TYPE_2__ w; TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input,
				  const struct bcm5974_config *cfg,
				  const struct tp_finger *f, int raw_n)
{
	int abs_p = 0, abs_w = 0;

	if (raw_n) {
		int p = FUNC2(f->touch_major);
		int w = FUNC2(f->tool_major);
		if (p > 0 && FUNC2(f->origin)) {
			abs_p = FUNC0(256 * p / cfg->p.max, 0, 255);
			abs_w = FUNC0(16 * w / cfg->w.max, 0, 15);
		}
	}

	FUNC1(input, ABS_PRESSURE, abs_p);
	FUNC1(input, ABS_TOOL_WIDTH, abs_w);
}