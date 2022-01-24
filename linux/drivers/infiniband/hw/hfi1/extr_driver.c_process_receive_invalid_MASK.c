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
struct hfi1_packet {int /*<<< orphan*/  rhf; TYPE_1__* rcd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int RHF_RCV_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hfi1_packet *packet)
{
	FUNC0(packet->rcd->dd, "Invalid packet type %d. Dropping\n",
		   FUNC1(packet->rhf));
	return RHF_RCV_CONTINUE;
}