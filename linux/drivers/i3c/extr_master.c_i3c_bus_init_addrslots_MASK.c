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
struct i3c_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  I3C_ADDR_SLOT_RSVD ; 
 int I3C_BROADCAST_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_bus*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i3c_bus *bus)
{
	int i;

	/* Addresses 0 to 7 are reserved. */
	for (i = 0; i < 8; i++)
		FUNC1(bus, i, I3C_ADDR_SLOT_RSVD);

	/*
	 * Reserve broadcast address and all addresses that might collide
	 * with the broadcast address when facing a single bit error.
	 */
	FUNC1(bus, I3C_BROADCAST_ADDR,
				     I3C_ADDR_SLOT_RSVD);
	for (i = 0; i < 7; i++)
		FUNC1(bus, I3C_BROADCAST_ADDR ^ FUNC0(i),
					     I3C_ADDR_SLOT_RSVD);
}