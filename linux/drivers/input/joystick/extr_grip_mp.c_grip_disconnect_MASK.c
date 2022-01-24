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
struct grip_mp {TYPE_1__** port; } ;
struct gameport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 struct grip_mp* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct grip_mp*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct grip_mp *grip = FUNC1(gameport);
	int i;

	for (i = 0; i < 4; i++)
		if (grip->port[i]->registered)
			FUNC3(grip->port[i]->dev);
	FUNC0(gameport);
	FUNC2(gameport, NULL);
	FUNC4(grip);
}