
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_gpu_fence_driver {int lock; int fences; scalar_t__ sync_seq; } ;
struct TYPE_3__ {scalar_t__ seqno; } ;
struct virtio_gpu_fence {TYPE_1__ f; int node; } ;
struct virtio_gpu_device {struct virtio_gpu_fence_driver fence_drv; } ;
struct virtio_gpu_ctrl_hdr {int fence_id; int flags; } ;


 int VIRTIO_GPU_FLAG_FENCE ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (scalar_t__) ;
 int dma_fence_get (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_dma_fence_emit (TYPE_1__*) ;

void virtio_gpu_fence_emit(struct virtio_gpu_device *vgdev,
     struct virtio_gpu_ctrl_hdr *cmd_hdr,
     struct virtio_gpu_fence *fence)
{
 struct virtio_gpu_fence_driver *drv = &vgdev->fence_drv;
 unsigned long irq_flags;

 spin_lock_irqsave(&drv->lock, irq_flags);
 fence->f.seqno = ++drv->sync_seq;
 dma_fence_get(&fence->f);
 list_add_tail(&fence->node, &drv->fences);
 spin_unlock_irqrestore(&drv->lock, irq_flags);

 trace_dma_fence_emit(&fence->f);

 cmd_hdr->flags |= cpu_to_le32(VIRTIO_GPU_FLAG_FENCE);
 cmd_hdr->fence_id = cpu_to_le64(fence->f.seqno);
}
