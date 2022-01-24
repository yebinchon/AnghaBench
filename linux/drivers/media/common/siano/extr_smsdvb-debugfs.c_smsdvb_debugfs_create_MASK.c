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
struct smsdvb_debugfs {int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/  stats_queue; } ;
struct smsdvb_client_t {int /*<<< orphan*/  prt_isdb_stats_ex; int /*<<< orphan*/  prt_isdb_stats; int /*<<< orphan*/  prt_dvb_stats; struct smsdvb_debugfs* debug_data; int /*<<< orphan*/  debugfs; struct smscore_device_t* coredev; } ;
struct smscore_device_t {int /*<<< orphan*/  devpath; int /*<<< orphan*/  is_usb_device; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int,int /*<<< orphan*/ ,struct smsdvb_client_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debugfs_stats_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct smsdvb_debugfs* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsdvb_debugfs_usb_root ; 
 int /*<<< orphan*/  smsdvb_print_dvb_stats ; 
 int /*<<< orphan*/  smsdvb_print_isdb_stats ; 
 int /*<<< orphan*/  smsdvb_print_isdb_stats_ex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct smsdvb_client_t *client)
{
	struct smscore_device_t *coredev = client->coredev;
	struct dentry *d;
	struct smsdvb_debugfs *debug_data;

	if (!smsdvb_debugfs_usb_root || !coredev->is_usb_device)
		return -ENODEV;

	client->debugfs = FUNC1(coredev->devpath,
					     smsdvb_debugfs_usb_root);
	if (FUNC0(client->debugfs)) {
		FUNC7("Unable to create debugfs %s directory.\n",
			coredev->devpath);
		return -ENODEV;
	}

	d = FUNC2("stats", S_IRUGO | S_IWUSR, client->debugfs,
				client, &debugfs_stats_ops);
	if (!d) {
		FUNC3(client->debugfs);
		return -ENOMEM;
	}

	debug_data = FUNC6(sizeof(*client->debug_data), GFP_KERNEL);
	if (!debug_data)
		return -ENOMEM;

	client->debug_data        = debug_data;
	client->prt_dvb_stats     = smsdvb_print_dvb_stats;
	client->prt_isdb_stats    = smsdvb_print_isdb_stats;
	client->prt_isdb_stats_ex = smsdvb_print_isdb_stats_ex;

	FUNC4(&debug_data->stats_queue);
	FUNC8(&debug_data->lock);
	FUNC5(&debug_data->refcount);

	return 0;
}