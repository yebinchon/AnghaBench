
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_modify {int sys_image_guid; int node_desc; } ;
struct ib_device {int node_desc; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {unsigned int num_pports; TYPE_1__* pport; } ;
struct TYPE_2__ {struct hfi1_ibport ibport_data; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ;
 int IB_DEVICE_NODE_DESC_MAX ;
 int cpu_to_be64 (int ) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int hfi1_node_desc_chg (struct hfi1_ibport*) ;
 int hfi1_sys_guid_chg (struct hfi1_ibport*) ;
 int ib_hfi1_sys_image_guid ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int modify_device(struct ib_device *device,
    int device_modify_mask,
    struct ib_device_modify *device_modify)
{
 struct hfi1_devdata *dd = dd_from_ibdev(device);
 unsigned i;
 int ret;

 if (device_modify_mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
       IB_DEVICE_MODIFY_NODE_DESC)) {
  ret = -EOPNOTSUPP;
  goto bail;
 }

 if (device_modify_mask & IB_DEVICE_MODIFY_NODE_DESC) {
  memcpy(device->node_desc, device_modify->node_desc,
         IB_DEVICE_NODE_DESC_MAX);
  for (i = 0; i < dd->num_pports; i++) {
   struct hfi1_ibport *ibp = &dd->pport[i].ibport_data;

   hfi1_node_desc_chg(ibp);
  }
 }

 if (device_modify_mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID) {
  ib_hfi1_sys_image_guid =
   cpu_to_be64(device_modify->sys_image_guid);
  for (i = 0; i < dd->num_pports; i++) {
   struct hfi1_ibport *ibp = &dd->pport[i].ibport_data;

   hfi1_sys_guid_chg(ibp);
  }
 }

 ret = 0;

bail:
 return ret;
}
