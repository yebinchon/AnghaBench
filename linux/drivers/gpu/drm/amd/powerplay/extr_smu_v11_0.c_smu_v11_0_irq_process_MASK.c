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
typedef  scalar_t__ uint32_t ;
struct amdgpu_iv_entry {scalar_t__ client_id; scalar_t__ src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOC15_IH_CLIENTID_THM ; 
#define  THM_11_0__SRCID__THM_DIG_THERM_H2L 129 
#define  THM_11_0__SRCID__THM_DIG_THERM_L2H 128 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev,
				 struct amdgpu_irq_src *source,
				 struct amdgpu_iv_entry *entry)
{
	uint32_t client_id = entry->client_id;
	uint32_t src_id = entry->src_id;

	if (client_id == SOC15_IH_CLIENTID_THM) {
		switch (src_id) {
		case THM_11_0__SRCID__THM_DIG_THERM_L2H:
			FUNC3("GPU over temperature range detected on PCIe %d:%d.%d!\n",
				FUNC0(adev->pdev->devfn),
				FUNC2(adev->pdev->devfn),
				FUNC1(adev->pdev->devfn));
		break;
		case THM_11_0__SRCID__THM_DIG_THERM_H2L:
			FUNC3("GPU under temperature range detected on PCIe %d:%d.%d!\n",
				FUNC0(adev->pdev->devfn),
				FUNC2(adev->pdev->devfn),
				FUNC1(adev->pdev->devfn));
		break;
		default:
			FUNC3("GPU under temperature range unknown src id (%d), detected on PCIe %d:%d.%d!\n",
				src_id,
				FUNC0(adev->pdev->devfn),
				FUNC2(adev->pdev->devfn),
				FUNC1(adev->pdev->devfn));
		break;

		}
	}

	return 0;
}