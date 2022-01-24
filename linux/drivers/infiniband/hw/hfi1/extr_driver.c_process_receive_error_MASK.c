#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hfi1_packet {int rhf; TYPE_1__* rcd; } ;
struct TYPE_4__ {int /*<<< orphan*/  verbs_dev; } ;
struct TYPE_3__ {TYPE_2__* dd; } ;

/* Variables and functions */
 int RHF_DC_ERR ; 
 int RHF_RCV_CONTINUE ; 
 scalar_t__ RHF_RCV_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_packet*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_packet*) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct hfi1_packet *packet)
{
	/* KHdrHCRCErr -- KDETH packet with a bad HCRC */
	if (FUNC6(
		 FUNC2(&packet->rcd->dd->verbs_dev) &&
		 (FUNC5(packet->rhf) == RHF_RCV_TYPE_ERROR ||
		  packet->rhf & RHF_DC_ERR)))
		return RHF_RCV_CONTINUE;

	FUNC3(packet);
	FUNC1(packet);

	if (FUNC6(FUNC4(packet->rhf)))
		FUNC0(packet->rcd->dd,
			   "Unhandled error packet received. Dropping.\n");

	return RHF_RCV_CONTINUE;
}