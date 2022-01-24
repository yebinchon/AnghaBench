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
typedef  int /*<<< orphan*/  u8 ;
struct opa_vnic_vema_port {int /*<<< orphan*/  vports; } ;
struct opa_vnic_vema_mad {int dummy; } ;
struct opa_vnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opa_vnic_vema_mad*) ; 
 struct opa_vnic_adapter* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct opa_vnic_adapter *
FUNC2(struct opa_vnic_vema_mad *recvd_mad,
		       struct opa_vnic_vema_port *port)
{
	u8 vport_num = FUNC0(recvd_mad);

	return FUNC1(&port->vports, vport_num);
}