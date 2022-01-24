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
typedef  int /*<<< orphan*/  u8 ;
struct i3c_bus {int dummy; } ;
typedef  enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;

/* Variables and functions */
 int I3C_ADDR_SLOT_FREE ; 
 int FUNC0 (struct i3c_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct i3c_bus *bus, u8 addr)
{
	enum i3c_addr_slot_status status;

	status = FUNC0(bus, addr);

	return status == I3C_ADDR_SLOT_FREE;
}