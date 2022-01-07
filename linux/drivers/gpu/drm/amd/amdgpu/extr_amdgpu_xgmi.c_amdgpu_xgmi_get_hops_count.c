
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct psp_xgmi_topology_info {int num_nodes; TYPE_5__* nodes; } ;
struct TYPE_8__ {scalar_t__ node_id; } ;
struct TYPE_9__ {TYPE_3__ xgmi; } ;
struct TYPE_6__ {struct psp_xgmi_topology_info top_info; } ;
struct TYPE_7__ {TYPE_1__ xgmi_context; } ;
struct amdgpu_device {TYPE_4__ gmc; TYPE_2__ psp; } ;
struct TYPE_10__ {scalar_t__ node_id; int num_hops; } ;


 int EINVAL ;

int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,
  struct amdgpu_device *peer_adev)
{
 struct psp_xgmi_topology_info *top = &adev->psp.xgmi_context.top_info;
 int i;

 for (i = 0 ; i < top->num_nodes; ++i)
  if (top->nodes[i].node_id == peer_adev->gmc.xgmi.node_id)
   return top->nodes[i].num_hops;
 return -EINVAL;
}
