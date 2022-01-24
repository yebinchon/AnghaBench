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
struct i3c_bus {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  i3c_bus_idr ; 
 int /*<<< orphan*/  i3c_core_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i3c_bus *i3cbus)
{
	FUNC1(&i3c_core_lock);
	FUNC0(&i3c_bus_idr, i3cbus->id);
	FUNC2(&i3c_core_lock);
}