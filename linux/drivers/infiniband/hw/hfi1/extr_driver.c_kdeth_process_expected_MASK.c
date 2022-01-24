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
struct hfi1_packet {struct hfi1_ctxtdata* rcd; int /*<<< orphan*/  rhf; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  ppd; } ;

/* Variables and functions */
 int RHF_RCV_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_packet*) ; 
 scalar_t__ FUNC1 (struct hfi1_ctxtdata*,int /*<<< orphan*/ ,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hfi1_packet *packet)
{
	FUNC3(packet);
	if (FUNC5(FUNC0(packet)))
		return RHF_RCV_CONTINUE;

	if (FUNC5(FUNC4(packet->rhf))) {
		struct hfi1_ctxtdata *rcd = packet->rcd;

		if (FUNC1(rcd, rcd->ppd, packet))
			return RHF_RCV_CONTINUE;
	}

	FUNC2(packet);
	return RHF_RCV_CONTINUE;
}