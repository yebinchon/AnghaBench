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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_pci {int dummy; } ;
typedef  enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;

/* Variables and functions */
 int NVKM_PCIE_SPEED_5_0 ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_pci*,int) ; 

int
FUNC2(struct nvkm_pci *pci, enum nvkm_pcie_speed speed, u8 width)
{
	FUNC0(pci, speed == NVKM_PCIE_SPEED_5_0);
	FUNC1(pci, speed);
	return 0;
}