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
struct hfi1_packet {int /*<<< orphan*/  ebuf; TYPE_1__* rcd; } ;
struct TYPE_2__ {scalar_t__ is_vnic; } ;

/* Variables and functions */
 scalar_t__ OPA_16B_L2_TYPE ; 
 scalar_t__ OPA_16B_L4_ETHR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct hfi1_packet *packet)
{
	/* Packet received in VNIC context via RSM */
	if (packet->rcd->is_vnic)
		return true;

	if ((FUNC0(packet->ebuf) == OPA_16B_L2_TYPE) &&
	    (FUNC1(packet->ebuf) == OPA_16B_L4_ETHR))
		return true;

	return false;
}