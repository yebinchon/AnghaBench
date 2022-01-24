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
struct hfi1_packet {int /*<<< orphan*/  dlid; int /*<<< orphan*/  rhf; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hfi1_packet*,int) ; 

void FUNC4(struct hfi1_packet *packet)
{
	struct hfi1_ctxtdata *rcd = packet->rcd;

	FUNC3(rcd->dd, packet, !!(FUNC2(packet->rhf)));
	FUNC1(packet, FUNC0(packet->dlid));
}