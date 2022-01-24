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
struct nvkm_device_pci {int suspend; int /*<<< orphan*/  pdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 struct nvkm_device_pci* FUNC0 (struct nvkm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_device *device)
{
	struct nvkm_device_pci *pdev = FUNC0(device);
	if (pdev->suspend) {
		int ret = FUNC1(pdev->pdev);
		if (ret)
			return ret;
		FUNC2(pdev->pdev);
		pdev->suspend = false;
	}
	return 0;
}