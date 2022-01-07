
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int io_modes; TYPE_1__* mem_ops; } ;
struct TYPE_2__ {int put_userptr; int get_userptr; } ;


 int EINVAL ;
 int VB2_USERPTR ;

__attribute__((used)) static int __verify_userptr_ops(struct vb2_queue *q)
{
 if (!(q->io_modes & VB2_USERPTR) || !q->mem_ops->get_userptr ||
     !q->mem_ops->put_userptr)
  return -EINVAL;

 return 0;
}
