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
struct fwnet_peer {int generation; TYPE_1__* dev; int /*<<< orphan*/  node_id; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_device {int generation; int /*<<< orphan*/  node_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct fwnet_peer* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC1 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fw_unit *unit)
{
	struct fw_device *device = FUNC1(unit);
	struct fwnet_peer *peer = FUNC0(&unit->device);
	int generation;

	generation = device->generation;

	FUNC2(&peer->dev->lock);
	peer->node_id    = device->node_id;
	peer->generation = generation;
	FUNC3(&peer->dev->lock);
}