
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_vb2_ctx {int name; int vb_q; } ;
struct dmx_buffer {int index; } ;


 int dprintk (int,char*,int ,int ) ;
 int vb2_core_querybuf (int *,int ,struct dmx_buffer*) ;

int dvb_vb2_querybuf(struct dvb_vb2_ctx *ctx, struct dmx_buffer *b)
{
 vb2_core_querybuf(&ctx->vb_q, b->index, b);
 dprintk(3, "[%s] index=%d\n", ctx->name, b->index);
 return 0;
}
