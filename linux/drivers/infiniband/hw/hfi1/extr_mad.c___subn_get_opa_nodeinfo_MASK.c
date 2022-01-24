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
typedef  int u8 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct opa_node_info {int node_type; scalar_t__ node_guid; int local_port_num; int /*<<< orphan*/ * vendor_id; int /*<<< orphan*/  revision; void* device_id; void* partition_cap; int /*<<< orphan*/  system_image_guid; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  class_version; int /*<<< orphan*/  base_version; scalar_t__ port_guid; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {scalar_t__ node_guid; int /*<<< orphan*/  phys_port_cnt; } ;
struct hfi1_devdata {unsigned int num_pports; int /*<<< orphan*/  oui3; int /*<<< orphan*/  oui2; int /*<<< orphan*/  oui1; int /*<<< orphan*/  minrev; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_PORT_GUID_INDEX ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  OPA_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  OPA_SM_CLASS_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  ib_hfi1_sys_image_guid ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int) ; 

__attribute__((used)) static int FUNC8(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct opa_node_info *ni;
	struct hfi1_devdata *dd = FUNC2(ibdev);
	unsigned pidx = port - 1; /* IB number port from 1, hw from 0 */

	ni = (struct opa_node_info *)data;

	/* GUID 0 is illegal */
	if (am || pidx >= dd->num_pports || ibdev->node_guid == 0 ||
	    FUNC6(sizeof(*ni), max_len) ||
	    FUNC3(FUNC7(ibdev, port), HFI1_PORT_GUID_INDEX) == 0) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	ni->port_guid = FUNC3(FUNC7(ibdev, port), HFI1_PORT_GUID_INDEX);
	ni->base_version = OPA_MGMT_BASE_VERSION;
	ni->class_version = OPA_SM_CLASS_VERSION;
	ni->node_type = 1;     /* channel adapter */
	ni->num_ports = ibdev->phys_port_cnt;
	/* This is already in network order */
	ni->system_image_guid = ib_hfi1_sys_image_guid;
	ni->node_guid = ibdev->node_guid;
	ni->partition_cap = FUNC0(FUNC4(dd));
	ni->device_id = FUNC0(dd->pcidev->device);
	ni->revision = FUNC1(dd->minrev);
	ni->local_port_num = port;
	ni->vendor_id[0] = dd->oui1;
	ni->vendor_id[1] = dd->oui2;
	ni->vendor_id[2] = dd->oui3;

	if (resp_len)
		*resp_len += sizeof(*ni);

	return FUNC5((struct ib_mad_hdr *)smp);
}