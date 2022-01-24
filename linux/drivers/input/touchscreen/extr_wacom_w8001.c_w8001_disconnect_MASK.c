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
struct w8001 {scalar_t__ touch_dev; scalar_t__ pen_dev; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct w8001*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct w8001* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct serio *serio)
{
	struct w8001 *w8001 = FUNC3(serio);

	FUNC2(serio);

	if (w8001->pen_dev)
		FUNC0(w8001->pen_dev);
	if (w8001->touch_dev)
		FUNC0(w8001->touch_dev);
	FUNC1(w8001);

	FUNC4(serio, NULL);
}