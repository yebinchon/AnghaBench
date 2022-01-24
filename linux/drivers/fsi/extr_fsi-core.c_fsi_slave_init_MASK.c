#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct TYPE_7__ {scalar_t__ of_node; int /*<<< orphan*/  devt; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct fsi_slave {int link; int t_send_delay; int t_echo_delay; int chip_id; TYPE_1__ dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  cdev_idx; int /*<<< orphan*/  size; scalar_t__ id; struct fsi_master* master; void* cfam_id; } ;
struct fsi_master {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* link_config ) (struct fsi_master*,int,int,int) ;int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  llmode ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FSI_LLMODE ; 
 int /*<<< orphan*/  FSI_LLMODE_ASYNC ; 
 int FSI_MASTER_FLAG_SWCLOCK ; 
 scalar_t__ FSI_SLAVE_BASE ; 
 int /*<<< orphan*/  FSI_SLAVE_SIZE_23b ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct fsi_slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfam_fops ; 
 int /*<<< orphan*/  cfam_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int,...) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  fsi_dev_cfam ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct fsi_master*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (struct fsi_master*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (struct fsi_master*,int,scalar_t__) ; 
 int /*<<< orphan*/  fsi_slave_raw_attr ; 
 int /*<<< orphan*/  fsi_slave_release ; 
 int FUNC16 (struct fsi_slave*) ; 
 int FUNC17 (struct fsi_slave*) ; 
 int /*<<< orphan*/  FUNC18 (struct fsi_slave*) ; 
 struct fsi_slave* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,char*,void**) ; 
 int /*<<< orphan*/  FUNC22 (struct fsi_master*,int,int,int) ; 

__attribute__((used)) static int FUNC23(struct fsi_master *master, int link, uint8_t id)
{
	uint32_t cfam_id;
	struct fsi_slave *slave;
	uint8_t crc;
	__be32 data, llmode;
	int rc;

	/* Currently, we only support single slaves on a link, and use the
	 * full 23-bit address range
	 */
	if (id != 0)
		return -EINVAL;

	rc = FUNC13(master, link, id, 0, &data, sizeof(data));
	if (rc) {
		FUNC6(&master->dev, "can't read slave %02x:%02x %d\n",
				link, id, rc);
		return -ENODEV;
	}
	cfam_id = FUNC1(data);

	crc = FUNC5(0, cfam_id, 32);
	if (crc) {
		FUNC9(&master->dev, "slave %02x:%02x invalid cfam id CRC!\n",
				link, id);
		return -EIO;
	}

	FUNC6(&master->dev, "fsi: found chip %08x at %02x:%02x:%02x\n",
			cfam_id, master->idx, link, id);

	/* If we're behind a master that doesn't provide a self-running bus
	 * clock, put the slave into async mode
	 */
	if (master->flags & FSI_MASTER_FLAG_SWCLOCK) {
		llmode = FUNC4(FSI_LLMODE_ASYNC);
		rc = FUNC14(master, link, id,
				FSI_SLAVE_BASE + FSI_LLMODE,
				&llmode, sizeof(llmode));
		if (rc)
			FUNC9(&master->dev,
				"can't set llmode on slave:%02x:%02x %d\n",
				link, id, rc);
	}

	/* We can communicate with a slave; create the slave device and
	 * register.
	 */
	slave = FUNC19(sizeof(*slave), GFP_KERNEL);
	if (!slave)
		return -ENOMEM;

	FUNC8(&slave->dev, "slave@%02x:%02x", link, id);
	slave->dev.type = &cfam_type;
	slave->dev.parent = &master->dev;
	slave->dev.of_node = FUNC15(master, link, id);
	slave->dev.release = fsi_slave_release;
	FUNC11(&slave->dev);
	slave->cfam_id = cfam_id;
	slave->master = master;
	slave->link = link;
	slave->id = id;
	slave->size = FSI_SLAVE_SIZE_23b;
	slave->t_send_delay = 16;
	slave->t_echo_delay = 16;

	/* Get chip ID if any */
	slave->chip_id = -1;
	if (slave->dev.of_node) {
		uint32_t prop;
		if (!FUNC21(slave->dev.of_node, "chip-id", &prop))
			slave->chip_id = prop;

	}

	rc = FUNC17(slave);
	if (rc) {
		FUNC9(&master->dev,
				"can't set smode on slave:%02x:%02x %d\n",
				link, id, rc);
		goto err_free;
	}

	/* Allocate a minor in the FSI space */
	rc = FUNC0(slave, fsi_dev_cfam, &slave->dev.devt,
				 &slave->cdev_idx);
	if (rc)
		goto err_free;

	/* Create chardev for userspace access */
	FUNC3(&slave->cdev, &cfam_fops);
	rc = FUNC2(&slave->cdev, &slave->dev);
	if (rc) {
		FUNC7(&slave->dev, "Error %d creating slave device\n", rc);
		goto err_free_ida;
	}

	/* Now that we have the cdev registered with the core, any fatal
	 * failures beyond this point will need to clean up through
	 * cdev_device_del(). Fortunately though, nothing past here is fatal.
	 */

	if (master->link_config)
		master->link_config(master, link,
				    slave->t_send_delay,
				    slave->t_echo_delay);

	/* Legacy raw file -> to be removed */
	rc = FUNC10(&slave->dev, &fsi_slave_raw_attr);
	if (rc)
		FUNC9(&slave->dev, "failed to create raw attr: %d\n", rc);


	rc = FUNC16(slave);
	if (rc)
		FUNC6(&master->dev, "failed during slave scan with: %d\n",
				rc);

	return 0;

err_free_ida:
	FUNC12(slave->dev.devt);
err_free:
	FUNC20(slave->dev.of_node);
	FUNC18(slave);
	return rc;
}