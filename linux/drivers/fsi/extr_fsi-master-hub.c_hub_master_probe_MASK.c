#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  release; struct device* parent; } ;
struct TYPE_4__ {int n_links; TYPE_1__ dev; int /*<<< orphan*/  link_enable; int /*<<< orphan*/  send_break; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct fsi_master_hub {int size; TYPE_2__ master; struct fsi_device* upstream; int /*<<< orphan*/  addr; } ;
struct fsi_device {int /*<<< orphan*/  slave; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSI_HUB_LINK_OFFSET ; 
 int FSI_HUB_LINK_SIZE ; 
 int /*<<< orphan*/  FSI_MVER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct fsi_master_hub*) ; 
 int FUNC5 (struct fsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  hub_master_break ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_master_hub*) ; 
 int /*<<< orphan*/  hub_master_link_enable ; 
 int /*<<< orphan*/  hub_master_read ; 
 int /*<<< orphan*/  hub_master_release ; 
 int /*<<< orphan*/  hub_master_write ; 
 struct fsi_master_hub* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct fsi_device* FUNC13 (struct device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct fsi_device *fsi_dev = FUNC13(dev);
	struct fsi_master_hub *hub;
	uint32_t reg, links;
	__be32 __reg;
	int rc;

	rc = FUNC5(fsi_dev, FSI_MVER, &__reg, sizeof(__reg));
	if (rc)
		return rc;

	reg = FUNC0(__reg);
	links = (reg >> 8) & 0xff;
	FUNC1(dev, "hub version %08x (%d links)\n", reg, links);

	rc = FUNC7(fsi_dev->slave, FSI_HUB_LINK_OFFSET,
			FSI_HUB_LINK_SIZE * links);
	if (rc) {
		FUNC2(dev, "can't claim slave address range for links");
		return rc;
	}

	hub = FUNC11(sizeof(*hub), GFP_KERNEL);
	if (!hub) {
		rc = -ENOMEM;
		goto err_release;
	}

	hub->addr = FSI_HUB_LINK_OFFSET;
	hub->size = FSI_HUB_LINK_SIZE * links;
	hub->upstream = fsi_dev;

	hub->master.dev.parent = dev;
	hub->master.dev.release = hub_master_release;
	hub->master.dev.of_node = FUNC12(FUNC3(dev));

	hub->master.n_links = links;
	hub->master.read = hub_master_read;
	hub->master.write = hub_master_write;
	hub->master.send_break = hub_master_break;
	hub->master.link_enable = hub_master_link_enable;

	FUNC4(dev, hub);

	FUNC10(hub);

	rc = FUNC6(&hub->master);
	if (rc)
		goto err_release;

	/* At this point, fsi_master_register performs the device_initialize(),
	 * and holds the sole reference on master.dev. This means the device
	 * will be freed (via ->release) during any subsequent call to
	 * fsi_master_unregister.  We add our own reference to it here, so we
	 * can perform cleanup (in _remove()) without it being freed before
	 * we're ready.
	 */
	FUNC9(&hub->master.dev);
	return 0;

err_release:
	FUNC8(fsi_dev->slave, FSI_HUB_LINK_OFFSET,
			FSI_HUB_LINK_SIZE * links);
	return rc;
}