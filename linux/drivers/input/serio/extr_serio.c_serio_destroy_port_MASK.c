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
struct serio {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; int /*<<< orphan*/ * parent; int /*<<< orphan*/  child_node; int /*<<< orphan*/  (* stop ) (struct serio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct serio* FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 

__attribute__((used)) static void FUNC9(struct serio *serio)
{
	struct serio *child;

	while ((child = FUNC5(serio)) != NULL) {
		FUNC7(child);
		FUNC3(&child->dev);
	}

	if (serio->stop)
		serio->stop(serio);

	if (serio->parent) {
		FUNC6(serio->parent);
		FUNC2(&serio->child_node);
		FUNC4(serio->parent);
		serio->parent = NULL;
	}

	if (FUNC1(&serio->dev))
		FUNC0(&serio->dev);

	FUNC2(&serio->node);
	FUNC7(serio);
	FUNC3(&serio->dev);
}