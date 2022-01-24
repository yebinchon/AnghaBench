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
struct fw_ohci {int dummy; } ;

/* Variables and functions */
 int PHY_INT_STATUS_BITS ; 
 int FUNC0 (struct fw_ohci*,int) ; 
 int FUNC1 (struct fw_ohci*,int,int) ; 

__attribute__((used)) static int FUNC2(struct fw_ohci *ohci, int addr,
			  int clear_bits, int set_bits)
{
	int ret = FUNC0(ohci, addr);
	if (ret < 0)
		return ret;

	/*
	 * The interrupt status bits are cleared by writing a one bit.
	 * Avoid clearing them unless explicitly requested in set_bits.
	 */
	if (addr == 5)
		clear_bits |= PHY_INT_STATUS_BITS;

	return FUNC1(ohci, addr, (ret & ~clear_bits) | set_bits);
}