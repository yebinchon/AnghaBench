
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct dvb_vb2_ctx {int name; int state; struct vb2_queue vb_q; } ;


 int DVB_VB2_STATE_NONE ;
 int DVB_VB2_STATE_STREAMON ;
 int dprintk (int,char*,int ,...) ;
 int vb2_core_streamon (struct vb2_queue*,int ) ;

int dvb_vb2_stream_on(struct dvb_vb2_ctx *ctx)
{
 struct vb2_queue *q = &ctx->vb_q;
 int ret;

 ret = vb2_core_streamon(q, q->type);
 if (ret) {
  ctx->state = DVB_VB2_STATE_NONE;
  dprintk(1, "[%s] errno=%d\n", ctx->name, ret);
  return ret;
 }
 ctx->state |= DVB_VB2_STATE_STREAMON;
 dprintk(3, "[%s]\n", ctx->name);

 return 0;
}
