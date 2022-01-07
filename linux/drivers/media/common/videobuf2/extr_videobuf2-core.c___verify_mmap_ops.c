
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int io_modes; TYPE_1__* mem_ops; } ;
struct TYPE_2__ {int mmap; int put; int alloc; } ;


 int EINVAL ;
 int VB2_MMAP ;

__attribute__((used)) static int __verify_mmap_ops(struct vb2_queue *q)
{
 if (!(q->io_modes & VB2_MMAP) || !q->mem_ops->alloc ||
     !q->mem_ops->put || !q->mem_ops->mmap)
  return -EINVAL;

 return 0;
}
