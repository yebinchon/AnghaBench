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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  fw_cfg_fname_kset ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fw_cfg_rev_attr ; 
 int /*<<< orphan*/  fw_cfg_sel_ko ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fw_cfg_top_ko ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	FUNC4("fw_cfg: unloading.\n");
	FUNC3();
	FUNC5(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
	FUNC0();
	FUNC2(fw_cfg_fname_kset);
	FUNC1(fw_cfg_sel_ko);
	return 0;
}