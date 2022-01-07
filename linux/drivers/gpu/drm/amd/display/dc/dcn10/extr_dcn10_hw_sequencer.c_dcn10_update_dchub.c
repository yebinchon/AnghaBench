
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hubbub {TYPE_4__* funcs; } ;
struct dchub_init_data {int dummy; } ;
struct dce_hwseq {TYPE_3__* ctx; } ;
struct TYPE_8__ {int (* update_dchub ) (struct hubbub*,struct dchub_init_data*) ;} ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_6__ {TYPE_1__* res_pool; } ;
struct TYPE_5__ {struct hubbub* hubbub; } ;


 int stub1 (struct hubbub*,struct dchub_init_data*) ;

__attribute__((used)) static void dcn10_update_dchub(struct dce_hwseq *hws, struct dchub_init_data *dh_data)
{
 struct hubbub *hubbub = hws->ctx->dc->res_pool->hubbub;


 hubbub->funcs->update_dchub(hubbub, dh_data);
}
