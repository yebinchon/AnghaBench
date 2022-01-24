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
struct serio {int /*<<< orphan*/  drv_mutex; TYPE_1__* drv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct serio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 

__attribute__((used)) static void FUNC3(struct serio *serio)
{
	FUNC0(&serio->drv_mutex);
	if (serio->drv && serio->drv->cleanup)
		serio->drv->cleanup(serio);
	FUNC1(&serio->drv_mutex);
}