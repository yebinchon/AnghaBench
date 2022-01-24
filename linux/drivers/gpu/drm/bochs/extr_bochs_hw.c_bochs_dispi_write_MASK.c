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
typedef  int u16 ;
struct bochs_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  VBE_DISPI_IOPORT_DATA ; 
 int /*<<< orphan*/  VBE_DISPI_IOPORT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct bochs_device *bochs, u16 reg, u16 val)
{
	if (bochs->mmio) {
		int offset = 0x500 + (reg << 1);
		FUNC1(val, bochs->mmio + offset);
	} else {
		FUNC0(reg, VBE_DISPI_IOPORT_INDEX);
		FUNC0(val, VBE_DISPI_IOPORT_DATA);
	}
}