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
struct gameport_driver {int dummy; } ;
struct gameport {int /*<<< orphan*/  drv_mutex; struct gameport_driver* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gameport *gameport, struct gameport_driver *drv)
{
	FUNC0(&gameport->drv_mutex);
	gameport->drv = drv;
	FUNC1(&gameport->drv_mutex);
}