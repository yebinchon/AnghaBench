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
struct pcilynx {TYPE_1__* pci_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_PHY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int LINK_PHY_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcilynx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct pcilynx *lynx, int addr, int val)
{
	if (addr > 15) {
		FUNC2(&lynx->pci_device->dev,
			"PHY register address %d out of range\n", addr);
		return -1;
	}
	if (val > 0xff) {
		FUNC2(&lynx->pci_device->dev,
			"PHY register value %d out of range\n", val);
		return -1;
	}
	FUNC3(lynx, LINK_PHY, LINK_PHY_WRITE |
		  FUNC0(addr) | FUNC1(val));

	return 0;
}