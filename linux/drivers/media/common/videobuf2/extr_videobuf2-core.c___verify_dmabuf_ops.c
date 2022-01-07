
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int io_modes; TYPE_1__* mem_ops; } ;
struct TYPE_2__ {int unmap_dmabuf; int map_dmabuf; int detach_dmabuf; int attach_dmabuf; } ;


 int EINVAL ;
 int VB2_DMABUF ;

__attribute__((used)) static int __verify_dmabuf_ops(struct vb2_queue *q)
{
 if (!(q->io_modes & VB2_DMABUF) || !q->mem_ops->attach_dmabuf ||
     !q->mem_ops->detach_dmabuf || !q->mem_ops->map_dmabuf ||
     !q->mem_ops->unmap_dmabuf)
  return -EINVAL;

 return 0;
}
