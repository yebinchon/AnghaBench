
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_plane_state {int dummy; } ;
struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* layer_config ) (struct mtk_ddp_comp*,unsigned int,struct mtk_plane_state*) ;} ;


 int stub1 (struct mtk_ddp_comp*,unsigned int,struct mtk_plane_state*) ;

__attribute__((used)) static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
          unsigned int idx,
          struct mtk_plane_state *state)
{
 if (comp->funcs && comp->funcs->layer_config)
  comp->funcs->layer_config(comp, idx, state);
}
