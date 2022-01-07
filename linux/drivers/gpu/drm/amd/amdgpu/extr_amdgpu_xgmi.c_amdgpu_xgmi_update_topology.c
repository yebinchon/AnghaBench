
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_hive_info {int number_devices; } ;
struct TYPE_7__ {int hive_id; int node_id; } ;
struct TYPE_6__ {TYPE_3__ xgmi; } ;
struct TYPE_5__ {int top_info; } ;
struct TYPE_8__ {TYPE_1__ xgmi_context; } ;
struct amdgpu_device {TYPE_2__ gmc; int dev; TYPE_4__ psp; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ,int ,int) ;
 int psp_xgmi_set_topology_info (TYPE_4__*,int ,int *) ;

int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct amdgpu_device *adev)
{
 int ret = -EINVAL;


 ret = psp_xgmi_set_topology_info(&adev->psp,
      hive->number_devices,
      &adev->psp.xgmi_context.top_info);
 if (ret)
  dev_err(adev->dev,
   "XGMI: Set topology failure on device %llx, hive %llx, ret %d",
   adev->gmc.xgmi.node_id,
   adev->gmc.xgmi.hive_id, ret);

 return ret;
}
