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
struct max8997_muic_info {int /*<<< orphan*/  edev; int /*<<< orphan*/  dev; int /*<<< orphan*/  path_uart; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_JIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct max8997_muic_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct max8997_muic_info *info,
			bool attached)
{
	int ret = 0;

	/* switch to UART */
	ret = FUNC2(info, info->path_uart, attached);
	if (ret) {
		FUNC0(info->dev, "failed to update muic register\n");
		return ret;
	}

	FUNC1(info->edev, EXTCON_JIG, attached);

	return 0;
}