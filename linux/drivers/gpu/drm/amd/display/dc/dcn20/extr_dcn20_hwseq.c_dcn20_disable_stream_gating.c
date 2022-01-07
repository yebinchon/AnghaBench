
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dsc; } ;
struct pipe_ctx {struct pipe_ctx* next_odm_pipe; TYPE_1__ stream_res; } ;
struct dce_hwseq {int dummy; } ;
struct dc {struct dce_hwseq* hwseq; } ;
struct TYPE_4__ {int inst; } ;


 int dcn20_dsc_pg_control (struct dce_hwseq*,int ,int) ;

__attribute__((used)) static void dcn20_disable_stream_gating(struct dc *dc, struct pipe_ctx *pipe_ctx)
{
}
