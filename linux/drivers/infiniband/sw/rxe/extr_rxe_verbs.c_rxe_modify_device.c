
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int node_desc; } ;
struct TYPE_3__ {int sys_image_guid; } ;
struct rxe_dev {TYPE_2__ ib_dev; TYPE_1__ attr; } ;
struct ib_device_modify {int node_desc; int sys_image_guid; } ;
struct ib_device {int dummy; } ;


 int IB_DEVICE_MODIFY_NODE_DESC ;
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int) ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

__attribute__((used)) static int rxe_modify_device(struct ib_device *dev,
        int mask, struct ib_device_modify *attr)
{
 struct rxe_dev *rxe = to_rdev(dev);

 if (mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID)
  rxe->attr.sys_image_guid = cpu_to_be64(attr->sys_image_guid);

 if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
  memcpy(rxe->ib_dev.node_desc,
         attr->node_desc, sizeof(rxe->ib_dev.node_desc));
 }

 return 0;
}
