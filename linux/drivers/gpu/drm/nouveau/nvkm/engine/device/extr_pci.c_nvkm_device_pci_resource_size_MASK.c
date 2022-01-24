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
struct nvkm_device_pci {int /*<<< orphan*/  pdev; } ;
struct nvkm_device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 struct nvkm_device_pci* FUNC0 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static resource_size_t
FUNC2(struct nvkm_device *device, unsigned bar)
{
	struct nvkm_device_pci *pdev = FUNC0(device);
	return FUNC1(pdev->pdev, bar);
}