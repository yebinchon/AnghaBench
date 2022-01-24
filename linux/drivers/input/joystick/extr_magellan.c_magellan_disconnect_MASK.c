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
struct serio {int dummy; } ;
struct magellan {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct magellan*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct magellan* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct serio *serio)
{
	struct magellan* magellan = FUNC3(serio);

	FUNC2(serio);
	FUNC4(serio, NULL);
	FUNC0(magellan->dev);
	FUNC1(magellan);
}