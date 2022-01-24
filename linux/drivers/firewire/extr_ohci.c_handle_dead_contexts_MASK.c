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
struct fw_ohci {int it_context_support; int ir_context_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI1394_AsReqRcvContextBase ; 
 int /*<<< orphan*/  OHCI1394_AsReqTrContextBase ; 
 int /*<<< orphan*/  OHCI1394_AsRspRcvContextBase ; 
 int /*<<< orphan*/  OHCI1394_AsRspTrContextBase ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct fw_ohci *ohci)
{
	unsigned int i;
	char name[8];

	FUNC2(ohci, "ATReq", OHCI1394_AsReqTrContextBase);
	FUNC2(ohci, "ATRsp", OHCI1394_AsRspTrContextBase);
	FUNC2(ohci, "ARReq", OHCI1394_AsReqRcvContextBase);
	FUNC2(ohci, "ARRsp", OHCI1394_AsRspRcvContextBase);
	for (i = 0; i < 32; ++i) {
		if (!(ohci->it_context_support & (1 << i)))
			continue;
		FUNC3(name, "IT%u", i);
		FUNC2(ohci, name, FUNC1(i));
	}
	for (i = 0; i < 32; ++i) {
		if (!(ohci->ir_context_support & (1 << i)))
			continue;
		FUNC3(name, "IR%u", i);
		FUNC2(ohci, name, FUNC0(i));
	}
	/* TODO: maybe try to flush and restart the dead contexts */
}