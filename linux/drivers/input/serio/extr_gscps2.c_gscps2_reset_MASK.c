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
struct gscps2port {int /*<<< orphan*/  lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ GSC_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct gscps2port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct gscps2port *ps2port)
{
	unsigned long flags;

	/* reset the interface */
	FUNC1(&ps2port->lock, flags);
	FUNC0(ps2port);
	FUNC3(0xff, ps2port->addr + GSC_RESET);
	FUNC0(ps2port);
	FUNC2(&ps2port->lock, flags);
}