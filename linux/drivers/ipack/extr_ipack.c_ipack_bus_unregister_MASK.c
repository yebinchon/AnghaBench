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
struct ipack_bus_device {int /*<<< orphan*/  bus_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ipack_bus_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipack_bus_type ; 
 int /*<<< orphan*/  ipack_ida ; 
 int /*<<< orphan*/  ipack_unregister_bus_member ; 
 int /*<<< orphan*/  FUNC2 (struct ipack_bus_device*) ; 

int FUNC3(struct ipack_bus_device *bus)
{
	FUNC0(&ipack_bus_type, NULL, bus,
		ipack_unregister_bus_member);
	FUNC1(&ipack_ida, bus->bus_nr);
	FUNC2(bus);
	return 0;
}