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
struct intel_huc {int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUC_UKERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct intel_huc*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct intel_huc *huc)
{
	/* HW doesn't look at destination address for HuC, so set it to 0 */
	return FUNC1(&huc->fw, FUNC0(huc), 0, HUC_UKERNEL);
}