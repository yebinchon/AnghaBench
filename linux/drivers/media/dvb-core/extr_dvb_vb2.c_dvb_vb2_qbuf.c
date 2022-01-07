
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_vb2_ctx {int name; int vb_q; } ;
struct dmx_buffer {int index; } ;


 int dprintk (int,char*,int ,int ,...) ;
 int vb2_core_qbuf (int *,int ,struct dmx_buffer*,int *) ;

int dvb_vb2_qbuf(struct dvb_vb2_ctx *ctx, struct dmx_buffer *b)
{
 int ret;

 ret = vb2_core_qbuf(&ctx->vb_q, b->index, b, ((void*)0));
 if (ret) {
  dprintk(1, "[%s] index=%d errno=%d\n", ctx->name,
   b->index, ret);
  return ret;
 }
 dprintk(5, "[%s] index=%d\n", ctx->name, b->index);

 return 0;
}
