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
struct serio_driver {int dummy; } ;
struct serio {struct serio_driver* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serio*) ; 
 int /*<<< orphan*/  FUNC1 (struct serio*) ; 

__attribute__((used)) static void FUNC2(struct serio *serio, struct serio_driver *drv)
{
	FUNC1(serio);
	serio->drv = drv;
	FUNC0(serio);
}