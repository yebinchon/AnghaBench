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
struct serio {int /*<<< orphan*/  name; int /*<<< orphan*/  phys; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* start ) (struct serio*) ;int /*<<< orphan*/  node; int /*<<< orphan*/  children; int /*<<< orphan*/  child_node; struct serio* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  serio_list ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*) ; 

__attribute__((used)) static void FUNC6(struct serio *serio)
{
	struct serio *parent = serio->parent;
	int error;

	if (parent) {
		FUNC4(parent);
		FUNC2(&serio->child_node, &parent->children);
		FUNC3(parent);
	}

	FUNC2(&serio->node, &serio_list);

	if (serio->start)
		serio->start(serio);

	error = FUNC1(&serio->dev);
	if (error)
		FUNC0(&serio->dev,
			"device_add() failed for %s (%s), error: %d\n",
			serio->phys, serio->name, error);
}