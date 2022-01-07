
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int dummy; } ;


 int FS_INTR ;
 int VOP_INTR_GET_TYPE (struct vop*,int ,int ) ;
 int status ;

__attribute__((used)) static bool vop_fs_irq_is_pending(struct vop *vop)
{
 return VOP_INTR_GET_TYPE(vop, status, FS_INTR);
}
