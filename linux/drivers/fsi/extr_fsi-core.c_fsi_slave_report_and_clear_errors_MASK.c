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
typedef  int /*<<< orphan*/  uint8_t ;
struct fsi_slave {int link; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; struct fsi_master* master; } ;
struct fsi_master {int dummy; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  int /*<<< orphan*/  irq ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FSI_SISC ; 
 scalar_t__ FSI_SLAVE_BASE ; 
 scalar_t__ FSI_SSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsi_master*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct fsi_master*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct fsi_slave *slave)
{
	struct fsi_master *master = slave->master;
	__be32 irq, stat;
	int rc, link;
	uint8_t id;

	link = slave->link;
	id = slave->id;

	rc = FUNC2(master, link, id, FSI_SLAVE_BASE + FSI_SISC,
			&irq, sizeof(irq));
	if (rc)
		return rc;

	rc =  FUNC2(master, link, id, FSI_SLAVE_BASE + FSI_SSTAT,
			&stat, sizeof(stat));
	if (rc)
		return rc;

	FUNC1(&slave->dev, "status: 0x%08x, sisc: 0x%08x\n",
			FUNC0(stat), FUNC0(irq));

	/* clear interrupts */
	return FUNC3(master, link, id, FSI_SLAVE_BASE + FSI_SISC,
			&irq, sizeof(irq));
}