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
struct tgfx {int /*<<< orphan*/  sem; int /*<<< orphan*/  timer; TYPE_1__* pd; int /*<<< orphan*/  used; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ TGFX_REFRESH_TIME ; 
 struct tgfx* FUNC0 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev)
{
	struct tgfx *tgfx = FUNC0(dev);
	int err;

	err = FUNC2(&tgfx->sem);
	if (err)
		return err;

	if (!tgfx->used++) {
		FUNC4(tgfx->pd);
		FUNC5(tgfx->pd->port, 0x04);
		FUNC1(&tgfx->timer, jiffies + TGFX_REFRESH_TIME);
	}

	FUNC3(&tgfx->sem);
	return 0;
}