
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbva_buf_ctx {int buffer_overflow; int * vbva; int * record; } ;
struct gen_pool {int dummy; } ;
typedef int s32 ;


 int vbva_inform_host (struct vbva_buf_ctx*,struct gen_pool*,int ,int) ;

void vbva_disable(struct vbva_buf_ctx *vbva_ctx, struct gen_pool *ctx,
    s32 screen)
{
 vbva_ctx->buffer_overflow = 0;
 vbva_ctx->record = ((void*)0);
 vbva_ctx->vbva = ((void*)0);

 vbva_inform_host(vbva_ctx, ctx, screen, 0);
}
