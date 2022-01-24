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
struct gameport {int /*<<< orphan*/  name; int /*<<< orphan*/  phys; int /*<<< orphan*/  dev; int /*<<< orphan*/  speed; scalar_t__ io; int /*<<< orphan*/  node; TYPE_1__* parent; } ;
struct TYPE_2__ {struct gameport* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gameport_list ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gameport*) ; 
 scalar_t__ use_ktime ; 

__attribute__((used)) static void FUNC6(struct gameport *gameport)
{
	int error;

	if (gameport->parent)
		gameport->parent->child = gameport;

	gameport->speed = use_ktime ?
		FUNC3(gameport) :
		FUNC5(gameport);

	FUNC4(&gameport->node, &gameport_list);

	if (gameport->io)
		FUNC1(&gameport->dev, "%s is %s, io %#x, speed %dkHz\n",
			 gameport->name, gameport->phys, gameport->io, gameport->speed);
	else
		FUNC1(&gameport->dev, "%s is %s, speed %dkHz\n",
			gameport->name, gameport->phys, gameport->speed);

	error = FUNC2(&gameport->dev);
	if (error)
		FUNC0(&gameport->dev,
			"device_add() failed for %s (%s), error: %d\n",
			gameport->phys, gameport->name, error);
}