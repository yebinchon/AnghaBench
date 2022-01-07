
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {int (* set_pasid_vmid_mapping ) (int ,unsigned int,unsigned int) ;} ;


 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int
set_pasid_vmid_mapping(struct device_queue_manager *dqm, unsigned int pasid,
   unsigned int vmid)
{
 return dqm->dev->kfd2kgd->set_pasid_vmid_mapping(
      dqm->dev->kgd, pasid, vmid);
}
