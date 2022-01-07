
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* disable_vblank ) (struct mtk_ddp_comp*) ;} ;


 int stub1 (struct mtk_ddp_comp*) ;

__attribute__((used)) static inline void mtk_ddp_comp_disable_vblank(struct mtk_ddp_comp *comp)
{
 if (comp->funcs && comp->funcs->disable_vblank)
  comp->funcs->disable_vblank(comp);
}
