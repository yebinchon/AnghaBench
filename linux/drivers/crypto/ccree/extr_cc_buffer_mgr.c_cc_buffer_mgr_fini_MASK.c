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
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buff_mgr_handle {int /*<<< orphan*/  mlli_buffs_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buff_mgr_handle*) ; 

int FUNC2(struct cc_drvdata *drvdata)
{
	struct buff_mgr_handle *buff_mgr_handle = drvdata->buff_mgr_handle;

	if (buff_mgr_handle) {
		FUNC0(buff_mgr_handle->mlli_buffs_pool);
		FUNC1(drvdata->buff_mgr_handle);
		drvdata->buff_mgr_handle = NULL;
	}
	return 0;
}