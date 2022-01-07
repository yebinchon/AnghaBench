
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet_manager {int allocated; int lock; int priv_queue; struct device_queue_manager* dqm; int * pmf; } ;
struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* device_info; } ;
struct TYPE_3__ {int asic_family; } ;
 int EINVAL ;
 int ENOMEM ;
 int KFD_QUEUE_TYPE_HIQ ;
 int WARN (int,char*,int) ;
 int kernel_queue_init (TYPE_2__*,int ) ;
 int kfd_v10_pm_funcs ;
 int kfd_v9_pm_funcs ;
 int kfd_vi_pm_funcs ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;

int pm_init(struct packet_manager *pm, struct device_queue_manager *dqm)
{
 switch (dqm->dev->device_info->asic_family) {
 case 138:
 case 139:

 case 141:
 case 132:
 case 140:
 case 136:
 case 135:
 case 134:
 case 128:
  pm->pmf = &kfd_vi_pm_funcs;
  break;
 case 131:
 case 130:
 case 129:
 case 133:
 case 142:
  pm->pmf = &kfd_v9_pm_funcs;
  break;
 case 137:
  pm->pmf = &kfd_v10_pm_funcs;
  break;
 default:
  WARN(1, "Unexpected ASIC family %u",
       dqm->dev->device_info->asic_family);
  return -EINVAL;
 }

 pm->dqm = dqm;
 mutex_init(&pm->lock);
 pm->priv_queue = kernel_queue_init(dqm->dev, KFD_QUEUE_TYPE_HIQ);
 if (!pm->priv_queue) {
  mutex_destroy(&pm->lock);
  return -ENOMEM;
 }
 pm->allocated = 0;

 return 0;
}
