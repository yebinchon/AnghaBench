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
struct grip {scalar_t__* dev; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 struct grip* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct grip*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct grip *grip = FUNC1(gameport);
	int i;

	for (i = 0; i < 2; i++)
		if (grip->dev[i])
			FUNC3(grip->dev[i]);
	FUNC0(gameport);
	FUNC2(gameport, NULL);
	FUNC4(grip);
}