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
struct nvkm_mmu {int dummy; } ;
struct nvkm_device {scalar_t__ type; int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 scalar_t__ NVKM_DEVICE_AGP ; 
 int FUNC0 (struct nvkm_device*,int,struct nvkm_mmu**) ; 
 int /*<<< orphan*/  nv41_mmu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_mmu**) ; 

int
FUNC3(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
	if (device->type == NVKM_DEVICE_AGP ||
	    !FUNC1(device->cfgopt, "NvPCIE", true))
		return FUNC0(device, index, pmmu);

	return FUNC2(&nv41_mmu, device, index, pmmu);
}