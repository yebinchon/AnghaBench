
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct TYPE_2__ {unsigned int (* layer_nr ) (struct mtk_ddp_comp*) ;} ;


 unsigned int stub1 (struct mtk_ddp_comp*) ;

__attribute__((used)) static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
{
 if (comp->funcs && comp->funcs->layer_nr)
  return comp->funcs->layer_nr(comp);

 return 0;
}
