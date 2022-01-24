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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;
struct byd_data {int touch; int abs_x; int abs_y; struct psmouse* psmouse; } ;

/* Variables and functions */
 int BYD_PAD_HEIGHT ; 
 int BYD_PAD_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*) ; 
 struct byd_data* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct byd_data* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct byd_data *priv = FUNC1(priv, t, timer);
	struct psmouse *psmouse = priv->psmouse;

	FUNC3(psmouse->ps2dev.serio);
	priv->touch = false;

	FUNC0(psmouse);

	FUNC2(psmouse->ps2dev.serio);

	/*
	 * Move cursor back to center of pad when we lose touch - this
	 * specifically improves user experience when moving cursor with one
	 * finger, and pressing a button with another.
	 */
	priv->abs_x = BYD_PAD_WIDTH / 2;
	priv->abs_y = BYD_PAD_HEIGHT / 2;
}