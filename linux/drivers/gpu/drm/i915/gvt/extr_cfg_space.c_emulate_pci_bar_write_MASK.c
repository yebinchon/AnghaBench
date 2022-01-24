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
typedef  int u64 ;
typedef  int u32 ;
struct intel_vgpu_pci_bar {int /*<<< orphan*/  size; } ;
struct TYPE_2__ {struct intel_vgpu_pci_bar* bar; } ;
struct intel_vgpu {TYPE_1__ cfg_space; } ;

/* Variables and functions */
 size_t INTEL_GVT_PCI_BAR_APERTURE ; 
 size_t INTEL_GVT_PCI_BAR_GTTMMIO ; 
 int FUNC0 (unsigned int,int) ; 
#define  PCI_BASE_ADDRESS_0 131 
#define  PCI_BASE_ADDRESS_1 130 
#define  PCI_BASE_ADDRESS_2 129 
#define  PCI_BASE_ADDRESS_3 128 
 size_t PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,unsigned int,int,int) ; 
 int FUNC2 (struct intel_vgpu*,int) ; 
 int FUNC3 (struct intel_vgpu*,int) ; 
 int* FUNC4 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC5(struct intel_vgpu *vgpu, unsigned int offset,
	void *p_data, unsigned int bytes)
{
	u32 new = *(u32 *)(p_data);
	bool lo = FUNC0(offset, 8);
	u64 size;
	int ret = 0;
	bool mmio_enabled =
		FUNC4(vgpu)[PCI_COMMAND] & PCI_COMMAND_MEMORY;
	struct intel_vgpu_pci_bar *bars = vgpu->cfg_space.bar;

	/*
	 * Power-up software can determine how much address
	 * space the device requires by writing a value of
	 * all 1's to the register and then reading the value
	 * back. The device will return 0's in all don't-care
	 * address bits.
	 */
	if (new == 0xffffffff) {
		switch (offset) {
		case PCI_BASE_ADDRESS_0:
		case PCI_BASE_ADDRESS_1:
			size = ~(bars[INTEL_GVT_PCI_BAR_GTTMMIO].size -1);
			FUNC1(vgpu, offset,
						size >> (lo ? 0 : 32), lo);
			/*
			 * Untrap the BAR, since guest hasn't configured a
			 * valid GPA
			 */
			ret = FUNC3(vgpu, false);
			break;
		case PCI_BASE_ADDRESS_2:
		case PCI_BASE_ADDRESS_3:
			size = ~(bars[INTEL_GVT_PCI_BAR_APERTURE].size -1);
			FUNC1(vgpu, offset,
						size >> (lo ? 0 : 32), lo);
			ret = FUNC2(vgpu, false);
			break;
		default:
			/* Unimplemented BARs */
			FUNC1(vgpu, offset, 0x0, false);
		}
	} else {
		switch (offset) {
		case PCI_BASE_ADDRESS_0:
		case PCI_BASE_ADDRESS_1:
			/*
			 * Untrap the old BAR first, since guest has
			 * re-configured the BAR
			 */
			FUNC3(vgpu, false);
			FUNC1(vgpu, offset, new, lo);
			ret = FUNC3(vgpu, mmio_enabled);
			break;
		case PCI_BASE_ADDRESS_2:
		case PCI_BASE_ADDRESS_3:
			FUNC2(vgpu, false);
			FUNC1(vgpu, offset, new, lo);
			ret = FUNC2(vgpu, mmio_enabled);
			break;
		default:
			FUNC1(vgpu, offset, new, lo);
		}
	}
	return ret;
}