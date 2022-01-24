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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  data_addr; int /*<<< orphan*/  index_addr; } ;
struct dmi_system_event_log {TYPE_1__ io; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_port_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(const struct dmi_system_event_log *sel,
				   loff_t offset)
{
	u8 ret;

	FUNC1(&io_port_lock);
	FUNC3((u8)offset, sel->io.index_addr);
	ret = FUNC0(sel->io.data_addr);
	FUNC2(&io_port_lock);
	return ret;
}