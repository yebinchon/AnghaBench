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
typedef  int u8 ;
struct scx200_acb_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACBCTL1 ; 
 int ACBCTL1_NMINTE ; 
 int /*<<< orphan*/  ACBCTL2 ; 
 int ACBCTL2_ENABLE ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct scx200_acb_iface *iface)
{
	u8 val;

	/* Disable the ACCESS.bus device and Configure the SCL
	   frequency: 16 clock cycles */
	FUNC1(0x70, ACBCTL2);

	if (FUNC0(ACBCTL2) != 0x70) {
		FUNC2("ACBCTL2 readback failed\n");
		return -ENXIO;
	}

	FUNC1(FUNC0(ACBCTL1) | ACBCTL1_NMINTE, ACBCTL1);

	val = FUNC0(ACBCTL1);
	if (val) {
		FUNC2("disabled, but ACBCTL1=0x%02x\n", val);
		return -ENXIO;
	}

	FUNC1(FUNC0(ACBCTL2) | ACBCTL2_ENABLE, ACBCTL2);

	FUNC1(FUNC0(ACBCTL1) | ACBCTL1_NMINTE, ACBCTL1);

	val = FUNC0(ACBCTL1);
	if ((val & ACBCTL1_NMINTE) != ACBCTL1_NMINTE) {
		FUNC2("enabled, but NMINTE won't be set, ACBCTL1=0x%02x\n",
			 val);
		return -ENXIO;
	}

	return 0;
}