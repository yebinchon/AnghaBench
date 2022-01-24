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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fsi_master_hub {TYPE_1__* upstream; scalar_t__ addr; } ;
struct fsi_master {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 int EINVAL ; 
 int FSI_HUB_LINK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 struct fsi_master_hub* FUNC1 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC2(struct fsi_master *master, int link,
			uint8_t id, uint32_t addr, void *val, size_t size)
{
	struct fsi_master_hub *hub = FUNC1(master);

	if (id != 0)
		return -EINVAL;

	addr += hub->addr + (link * FSI_HUB_LINK_SIZE);
	return FUNC0(hub->upstream->slave, addr, val, size);
}