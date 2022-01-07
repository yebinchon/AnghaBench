
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* device_info; } ;
struct TYPE_4__ {scalar_t__ (* initialize ) (struct kernel_queue*,struct kfd_dev*,int,int ) ;int rollback_packet; int submit_packet; int acquire_packet_buffer; int uninitialize; } ;
struct kernel_queue {TYPE_2__ ops; int ops_asic_specific; } ;
typedef enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;
struct TYPE_3__ {int asic_family; } ;
 int GFP_KERNEL ;
 int KFD_KERNEL_QUEUE_SIZE ;
 int WARN (int,char*,int) ;
 int acquire_packet_buffer ;
 scalar_t__ initialize (struct kernel_queue*,struct kfd_dev*,int,int ) ;
 int kernel_queue_init_cik (int *) ;
 int kernel_queue_init_v10 (int *) ;
 int kernel_queue_init_v9 (int *) ;
 int kernel_queue_init_vi (int *) ;
 int kfree (struct kernel_queue*) ;
 struct kernel_queue* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int rollback_packet ;
 scalar_t__ stub1 (struct kernel_queue*,struct kfd_dev*,int,int ) ;
 int submit_packet ;
 int uninitialize ;

struct kernel_queue *kernel_queue_init(struct kfd_dev *dev,
     enum kfd_queue_type type)
{
 struct kernel_queue *kq;

 kq = kzalloc(sizeof(*kq), GFP_KERNEL);
 if (!kq)
  return ((void*)0);

 kq->ops.initialize = initialize;
 kq->ops.uninitialize = uninitialize;
 kq->ops.acquire_packet_buffer = acquire_packet_buffer;
 kq->ops.submit_packet = submit_packet;
 kq->ops.rollback_packet = rollback_packet;

 switch (dev->device_info->asic_family) {
 case 141:
 case 132:
 case 140:
 case 136:
 case 135:
 case 134:
 case 128:
  kernel_queue_init_vi(&kq->ops_asic_specific);
  break;

 case 138:
 case 139:
  kernel_queue_init_cik(&kq->ops_asic_specific);
  break;

 case 131:
 case 130:
 case 129:
 case 133:
 case 142:
  kernel_queue_init_v9(&kq->ops_asic_specific);
  break;
 case 137:
  kernel_queue_init_v10(&kq->ops_asic_specific);
  break;
 default:
  WARN(1, "Unexpected ASIC family %u",
       dev->device_info->asic_family);
  goto out_free;
 }

 if (kq->ops.initialize(kq, dev, type, KFD_KERNEL_QUEUE_SIZE))
  return kq;

 pr_err("Failed to init kernel queue\n");

out_free:
 kfree(kq);
 return ((void*)0);
}
