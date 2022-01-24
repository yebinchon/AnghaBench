#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ last_update; int /*<<< orphan*/  update_lock; } ;
struct ibm_cffps {int version; int* debugfs_entries; TYPE_1__ input_history; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * platform_data; } ;
struct i2c_client {int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct dentry {int dummy; } ;
typedef  enum versions { ____Placeholder_versions } versions ;

/* Variables and functions */
 size_t CFFPS_DEBUGFS_CCIN ; 
 size_t CFFPS_DEBUGFS_FRU ; 
 size_t CFFPS_DEBUGFS_FW ; 
 size_t CFFPS_DEBUGFS_INPUT_HISTORY ; 
 int CFFPS_DEBUGFS_NUM_ENTRIES ; 
 size_t CFFPS_DEBUGFS_PN ; 
 size_t CFFPS_DEBUGFS_SN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 int cffps1 ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,int*,int /*<<< orphan*/ *) ; 
 struct ibm_cffps* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibm_cffps*) ; 
 int /*<<< orphan*/  ibm_cffps_fops ; 
 int /*<<< orphan*/ * ibm_cffps_info ; 
 int /*<<< orphan*/  ibm_cffps_pdata ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct i2c_client*,struct i2c_device_id const*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	int i, rc;
	enum versions vs;
	struct dentry *debugfs;
	struct dentry *ibm_cffps_dir;
	struct ibm_cffps *psu;
	const void *md = FUNC5(&client->dev);

	if (md)
		vs = (enum versions)md;
	else if (id)
		vs = (enum versions)id->driver_data;
	else
		vs = cffps1;

	client->dev.platform_data = &ibm_cffps_pdata;
	rc = FUNC6(client, id, &ibm_cffps_info[vs]);
	if (rc)
		return rc;

	/*
	 * Don't fail the probe if there isn't enough memory for leds and
	 * debugfs.
	 */
	psu = FUNC2(&client->dev, sizeof(*psu), GFP_KERNEL);
	if (!psu)
		return 0;

	psu->version = vs;
	psu->client = client;
	FUNC4(&psu->input_history.update_lock);
	psu->input_history.last_update = jiffies - HZ;

	FUNC3(psu);

	/* Don't fail the probe if we can't create debugfs */
	debugfs = FUNC7(client);
	if (!debugfs)
		return 0;

	ibm_cffps_dir = FUNC0(client->name, debugfs);
	if (!ibm_cffps_dir)
		return 0;

	for (i = 0; i < CFFPS_DEBUGFS_NUM_ENTRIES; ++i)
		psu->debugfs_entries[i] = i;

	FUNC1("input_history", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_INPUT_HISTORY],
			    &ibm_cffps_fops);
	FUNC1("fru", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_FRU],
			    &ibm_cffps_fops);
	FUNC1("part_number", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_PN],
			    &ibm_cffps_fops);
	FUNC1("serial_number", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_SN],
			    &ibm_cffps_fops);
	FUNC1("ccin", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_CCIN],
			    &ibm_cffps_fops);
	FUNC1("fw_version", 0444, ibm_cffps_dir,
			    &psu->debugfs_entries[CFFPS_DEBUGFS_FW],
			    &ibm_cffps_fops);

	return 0;
}