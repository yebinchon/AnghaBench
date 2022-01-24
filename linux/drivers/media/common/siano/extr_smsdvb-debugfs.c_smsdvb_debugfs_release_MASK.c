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
struct smsdvb_client_t {int /*<<< orphan*/ * debugfs; TYPE_1__* debug_data; int /*<<< orphan*/ * prt_isdb_stats_ex; int /*<<< orphan*/ * prt_isdb_stats; int /*<<< orphan*/ * prt_dvb_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsdvb_debugfs_data_release ; 

void FUNC2(struct smsdvb_client_t *client)
{
	if (!client->debugfs)
		return;

	client->prt_dvb_stats     = NULL;
	client->prt_isdb_stats    = NULL;
	client->prt_isdb_stats_ex = NULL;

	FUNC0(client->debugfs);
	FUNC1(&client->debug_data->refcount, smsdvb_debugfs_data_release);

	client->debug_data = NULL;
	client->debugfs = NULL;
}