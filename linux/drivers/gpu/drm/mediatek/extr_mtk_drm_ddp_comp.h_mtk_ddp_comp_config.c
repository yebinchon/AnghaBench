
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* config ) (struct mtk_ddp_comp*,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;


 int stub1 (struct mtk_ddp_comp*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
           unsigned int w, unsigned int h,
           unsigned int vrefresh, unsigned int bpc)
{
 if (comp->funcs && comp->funcs->config)
  comp->funcs->config(comp, w, h, vrefresh, bpc);
}
