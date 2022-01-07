
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int dummy; } ;


 int VOP_REG_SET (struct vop*,int ,int ,int) ;
 int cfg_done ;
 int common ;

__attribute__((used)) static inline void vop_cfg_done(struct vop *vop)
{
 VOP_REG_SET(vop, common, cfg_done, 1);
}
