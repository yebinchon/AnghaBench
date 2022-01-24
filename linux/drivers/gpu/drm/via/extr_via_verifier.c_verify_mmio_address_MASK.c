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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static __inline__ int FUNC1(uint32_t address)
{
	if ((address > 0x3FF) && (address < 0xC00)) {
		FUNC0("Invalid VIDEO DMA command. "
			  "Attempt to access 3D- or command burst area.\n");
		return 1;
	} else if ((address > 0xCFF) && (address < 0x1300)) {
		FUNC0("Invalid VIDEO DMA command. "
			  "Attempt to access PCI DMA area.\n");
		return 1;
	} else if (address > 0x13FF) {
		FUNC0("Invalid VIDEO DMA command. "
			  "Attempt to access VGA registers.\n");
		return 1;
	}
	return 0;
}