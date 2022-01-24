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
struct serio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct iforce_serio {TYPE_1__ iforce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iforce_serio*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct iforce_serio* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct serio *serio)
{
	struct iforce_serio *iforce_serio = FUNC3(serio);

	FUNC0(iforce_serio->iforce.dev);
	FUNC2(serio);
	FUNC4(serio, NULL);
	FUNC1(iforce_serio);
}