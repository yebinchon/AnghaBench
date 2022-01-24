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
struct serport {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct serio {struct serport* port_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct serio *serio)
{
	struct serport *serport = serio->port_data;
	unsigned long flags;

	FUNC1(&serport->lock, flags);
	FUNC0(SERPORT_ACTIVE, &serport->flags);
	FUNC2(&serport->lock, flags);
}