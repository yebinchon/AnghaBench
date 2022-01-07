
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_smp {int status; scalar_t__ attr_mod; int data; } ;
struct ib_node_info {int node_type; scalar_t__ node_guid; int local_port_num; int * vendor_id; int revision; void* device_id; void* partition_cap; int sys_guid; int num_ports; int class_version; int base_version; scalar_t__ port_guid; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {scalar_t__ node_guid; int phys_port_cnt; } ;
struct hfi1_devdata {unsigned int num_pports; int oui3; int oui2; int oui1; int minrev; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int device; } ;


 int HFI1_PORT_GUID_INDEX ;
 int IB_SMP_INVALID_FIELD ;
 int OPA_MGMT_BASE_VERSION ;
 int OPA_SM_CLASS_VERSION ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 scalar_t__ get_sguid (int ,int ) ;
 int hfi1_get_npkeys (struct hfi1_devdata*) ;
 int ib_hfi1_sys_image_guid ;
 int reply (struct ib_mad_hdr*) ;
 int to_iport (struct ib_device*,int) ;

__attribute__((used)) static int subn_get_nodeinfo(struct ib_smp *smp, struct ib_device *ibdev,
        u8 port)
{
 struct ib_node_info *nip = (struct ib_node_info *)&smp->data;
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 unsigned pidx = port - 1;


 if (smp->attr_mod || pidx >= dd->num_pports ||
     ibdev->node_guid == 0 ||
     get_sguid(to_iport(ibdev, port), HFI1_PORT_GUID_INDEX) == 0) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 nip->port_guid = get_sguid(to_iport(ibdev, port), HFI1_PORT_GUID_INDEX);
 nip->base_version = OPA_MGMT_BASE_VERSION;
 nip->class_version = OPA_SM_CLASS_VERSION;
 nip->node_type = 1;
 nip->num_ports = ibdev->phys_port_cnt;

 nip->sys_guid = ib_hfi1_sys_image_guid;
 nip->node_guid = ibdev->node_guid;
 nip->partition_cap = cpu_to_be16(hfi1_get_npkeys(dd));
 nip->device_id = cpu_to_be16(dd->pcidev->device);
 nip->revision = cpu_to_be32(dd->minrev);
 nip->local_port_num = port;
 nip->vendor_id[0] = dd->oui1;
 nip->vendor_id[1] = dd->oui2;
 nip->vendor_id[2] = dd->oui3;

 return reply((struct ib_mad_hdr *)smp);
}
