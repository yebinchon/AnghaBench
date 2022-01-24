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
typedef  void* u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ib_pma_portcounters {void* port_select; int link_error_recovery_counter; int link_downed_counter; int port_xmit_constraint_errors; int port_rcv_constraint_errors; scalar_t__ vl15_dropped; void* link_overrun_errors; void* port_xmit_discards; void* port_rcv_switch_relay_errors; void* port_rcv_remphys_errors; void* port_rcv_errors; scalar_t__ symbol_error_counter; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int /*<<< orphan*/  status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct _port_ectrs {int /*<<< orphan*/  excessive_buffer_overruns; int /*<<< orphan*/  local_link_integrity_errors; int /*<<< orphan*/  port_rcv_constraint_errors; int /*<<< orphan*/  port_xmit_constraint_errors; int /*<<< orphan*/  port_xmit_discards; int /*<<< orphan*/  port_rcv_switch_relay_errors; int /*<<< orphan*/  port_rcv_remote_physical_errors; int /*<<< orphan*/  port_rcv_errors; int /*<<< orphan*/  link_downed; int /*<<< orphan*/  link_error_recovery; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct _port_ectrs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,struct _port_ectrs*,void*) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 

__attribute__((used)) static int FUNC6(struct ib_pma_mad *pmp,
				   struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portcounters *p = (struct ib_pma_portcounters *)
		pmp->data;
	struct _port_ectrs rsp;
	u64 temp_link_overrun_errors;
	u64 temp_64;
	u32 temp_32;

	FUNC3(&rsp, 0, sizeof(rsp));
	FUNC4(ibdev, &rsp, port);

	if (pmp->mad_hdr.attr_mod != 0 || p->port_select != port) {
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
		goto bail;
	}

	p->symbol_error_counter = 0; /* N/A for OPA */

	temp_32 = FUNC0(rsp.link_error_recovery);
	if (temp_32 > 0xFFUL)
		p->link_error_recovery_counter = 0xFF;
	else
		p->link_error_recovery_counter = (u8)temp_32;

	temp_32 = FUNC0(rsp.link_downed);
	if (temp_32 > 0xFFUL)
		p->link_downed_counter = 0xFF;
	else
		p->link_downed_counter = (u8)temp_32;

	temp_64 = FUNC1(rsp.port_rcv_errors);
	if (temp_64 > 0xFFFFUL)
		p->port_rcv_errors = FUNC2(0xFFFF);
	else
		p->port_rcv_errors = FUNC2((u16)temp_64);

	temp_64 = FUNC1(rsp.port_rcv_remote_physical_errors);
	if (temp_64 > 0xFFFFUL)
		p->port_rcv_remphys_errors = FUNC2(0xFFFF);
	else
		p->port_rcv_remphys_errors = FUNC2((u16)temp_64);

	temp_64 = FUNC1(rsp.port_rcv_switch_relay_errors);
	p->port_rcv_switch_relay_errors = FUNC2((u16)temp_64);

	temp_64 = FUNC1(rsp.port_xmit_discards);
	if (temp_64 > 0xFFFFUL)
		p->port_xmit_discards = FUNC2(0xFFFF);
	else
		p->port_xmit_discards = FUNC2((u16)temp_64);

	temp_64 = FUNC1(rsp.port_xmit_constraint_errors);
	if (temp_64 > 0xFFUL)
		p->port_xmit_constraint_errors = 0xFF;
	else
		p->port_xmit_constraint_errors = (u8)temp_64;

	temp_64 = FUNC1(rsp.port_rcv_constraint_errors);
	if (temp_64 > 0xFFUL)
		p->port_rcv_constraint_errors = 0xFFUL;
	else
		p->port_rcv_constraint_errors = (u8)temp_64;

	/* LocalLink: 7:4, BufferOverrun: 3:0 */
	temp_64 = FUNC1(rsp.local_link_integrity_errors);
	if (temp_64 > 0xFUL)
		temp_64 = 0xFUL;

	temp_link_overrun_errors = temp_64 << 4;

	temp_64 = FUNC1(rsp.excessive_buffer_overruns);
	if (temp_64 > 0xFUL)
		temp_64 = 0xFUL;
	temp_link_overrun_errors |= temp_64;

	p->link_overrun_errors = (u8)temp_link_overrun_errors;

	p->vl15_dropped = 0; /* N/A for OPA */

bail:
	return FUNC5((struct ib_mad_hdr *)pmp);
}