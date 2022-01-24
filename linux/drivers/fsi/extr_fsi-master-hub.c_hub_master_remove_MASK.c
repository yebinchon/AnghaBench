#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct fsi_master_hub {TYPE_3__ master; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; TYPE_1__* upstream; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 struct fsi_master_hub* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct fsi_master_hub *hub = FUNC0(dev);

	FUNC1(&hub->master);
	FUNC2(hub->upstream->slave, hub->addr, hub->size);
	FUNC3(hub->master.dev.of_node);

	/*
	 * master.dev will likely be ->release()ed after this, which free()s
	 * the hub
	 */
	FUNC4(&hub->master.dev);

	return 0;
}