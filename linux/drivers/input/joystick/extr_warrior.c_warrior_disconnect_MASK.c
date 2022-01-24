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
struct warrior {int /*<<< orphan*/  dev; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct warrior*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct warrior* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct serio *serio)
{
	struct warrior *warrior = FUNC3(serio);

	FUNC2(serio);
	FUNC4(serio, NULL);
	FUNC0(warrior->dev);
	FUNC1(warrior);
}