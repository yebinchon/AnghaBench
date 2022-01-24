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
struct gameport {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct gameport* FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gameport *gameport)
{
	struct gameport *child;

	child = FUNC2(gameport);
	if (child) {
		FUNC3(child);
		FUNC5(&child->dev);
	}

	if (gameport->parent) {
		gameport->parent->child = NULL;
		gameport->parent = NULL;
	}

	if (FUNC1(&gameport->dev))
		FUNC0(&gameport->dev);

	FUNC4(&gameport->node);

	FUNC3(gameport);
	FUNC5(&gameport->dev);
}