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
struct xgene_edac_pmd_ctx {struct edac_device_ctl_info* edac_dev; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xgene_edac_pmd_ctx *pmd)
{
	struct edac_device_ctl_info *edac_dev = pmd->edac_dev;

	FUNC2(edac_dev, 0);
	FUNC0(edac_dev->dev);
	FUNC1(edac_dev);
	return 0;
}