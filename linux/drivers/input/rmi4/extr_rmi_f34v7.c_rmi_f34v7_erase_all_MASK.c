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
struct TYPE_4__ {scalar_t__ has_guest_code; scalar_t__ new_partition_table; int /*<<< orphan*/  config_area; scalar_t__ has_display_cfg; int /*<<< orphan*/  cmd_done; } ;
struct f34_data {TYPE_2__ v7; TYPE_1__* fn; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  F34_ERASE_WAIT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct f34_data*) ; 
 int FUNC3 (struct f34_data*) ; 
 int FUNC4 (struct f34_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct f34_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v7_CMD_ERASE_UI_FIRMWARE ; 
 int /*<<< orphan*/  v7_DP_CONFIG_AREA ; 
 int /*<<< orphan*/  v7_UI_CONFIG_AREA ; 

__attribute__((used)) static int FUNC6(struct f34_data *f34)
{
	int ret;

	FUNC0(&f34->fn->dev, "Erasing firmware...\n");

	FUNC1(&f34->v7.cmd_done);

	ret = FUNC5(f34, v7_CMD_ERASE_UI_FIRMWARE);
	if (ret < 0)
		return ret;

	ret = FUNC4(f34, F34_ERASE_WAIT_MS);
	if (ret < 0)
		return ret;

	f34->v7.config_area = v7_UI_CONFIG_AREA;
	ret = FUNC2(f34);
	if (ret < 0)
		return ret;

	if (f34->v7.has_display_cfg) {
		f34->v7.config_area = v7_DP_CONFIG_AREA;
		ret = FUNC2(f34);
		if (ret < 0)
			return ret;
	}

	if (f34->v7.new_partition_table && f34->v7.has_guest_code) {
		ret = FUNC3(f34);
		if (ret < 0)
			return ret;
	}

	return 0;
}