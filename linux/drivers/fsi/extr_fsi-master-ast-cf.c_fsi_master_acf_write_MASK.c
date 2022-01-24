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
typedef  int /*<<< orphan*/  uint32_t ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_master_acf*,struct fsi_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int FUNC2 (struct fsi_master_acf*,int /*<<< orphan*/ ,struct fsi_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_master_acf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fsi_master_acf* FUNC6 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC7(struct fsi_master *_master, int link,
				uint8_t id, uint32_t addr, const void *val,
				size_t size)
{
	struct fsi_master_acf *master = FUNC6(_master);
	struct fsi_msg cmd;
	int rc;

	if (link != 0)
		return -ENODEV;

	FUNC4(&master->lock);
	FUNC0(master, &cmd, id, addr, size, val);
	FUNC1(master->dev, "write id %d addr %x size %zd raw_data: %08x\n",
		id, addr, size, *(uint32_t *)val);
	rc = FUNC2(master, id, &cmd, 0, NULL);
	FUNC3(master, id, rc == 0, addr);
	if (rc)
		FUNC1(master->dev, "write id %d addr 0x%08x err: %d\n",
			id, addr, rc);
	FUNC5(&master->lock);

	return rc;
}