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
struct tgfx {int /*<<< orphan*/  sem; TYPE_1__* pd; int /*<<< orphan*/  timer; int /*<<< orphan*/  used; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tgfx* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct tgfx *tgfx = FUNC1(dev);

	FUNC2(&tgfx->sem);
	if (!--tgfx->used) {
		FUNC0(&tgfx->timer);
		FUNC5(tgfx->pd->port, 0x00);
		FUNC4(tgfx->pd);
	}
	FUNC3(&tgfx->sem);
}