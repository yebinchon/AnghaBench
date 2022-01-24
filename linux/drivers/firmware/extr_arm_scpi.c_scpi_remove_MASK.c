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
struct scpi_drvinfo {TYPE_1__** dvfs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* opps; } ;

/* Variables and functions */
 int MAX_DVFS_DOMAINS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct scpi_drvinfo* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/ * scpi_info ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int i;
	struct scpi_drvinfo *info = FUNC1(pdev);

	scpi_info = NULL; /* stop exporting SCPI ops through get_scpi_ops */

	for (i = 0; i < MAX_DVFS_DOMAINS && info->dvfs[i]; i++) {
		FUNC0(info->dvfs[i]->opps);
		FUNC0(info->dvfs[i]);
	}

	return 0;
}