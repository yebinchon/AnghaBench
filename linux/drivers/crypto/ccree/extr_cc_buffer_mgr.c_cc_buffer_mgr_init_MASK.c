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
struct device {int dummy; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buff_mgr_handle {int /*<<< orphan*/  mlli_buffs_pool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LLI_ENTRY_BYTE_SIZE ; 
 int MAX_NUM_OF_TOTAL_MLLI_ENTRIES ; 
 int /*<<< orphan*/  MLLI_TABLE_MIN_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (struct cc_drvdata*) ; 
 struct buff_mgr_handle* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct cc_drvdata *drvdata)
{
	struct buff_mgr_handle *buff_mgr_handle;
	struct device *dev = FUNC2(drvdata);

	buff_mgr_handle = FUNC3(sizeof(*buff_mgr_handle), GFP_KERNEL);
	if (!buff_mgr_handle)
		return -ENOMEM;

	drvdata->buff_mgr_handle = buff_mgr_handle;

	buff_mgr_handle->mlli_buffs_pool =
		FUNC1("dx_single_mlli_tables", dev,
				MAX_NUM_OF_TOTAL_MLLI_ENTRIES *
				LLI_ENTRY_BYTE_SIZE,
				MLLI_TABLE_MIN_ALIGNMENT, 0);

	if (!buff_mgr_handle->mlli_buffs_pool)
		goto error;

	return 0;

error:
	FUNC0(drvdata);
	return -ENOMEM;
}