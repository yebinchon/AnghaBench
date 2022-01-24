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
struct gscps2port {scalar_t__ append; scalar_t__ act; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int GSC_STAT_RBNE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gscps2port *ps2port)
{
	while (FUNC1(ps2port->addr) & GSC_STAT_RBNE)
		FUNC0(ps2port->addr);
	ps2port->act = ps2port->append = 0;
}