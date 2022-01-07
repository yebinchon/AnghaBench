
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct dvb_vb2_ctx {int state; int name; int vb_q; } ;


 int DVB_VB2_STATE_INIT ;
 int DVB_VB2_STATE_NONE ;
 int dprintk (int,char*,int ) ;
 int vb2_core_queue_release (struct vb2_queue*) ;

int dvb_vb2_release(struct dvb_vb2_ctx *ctx)
{
 struct vb2_queue *q = (struct vb2_queue *)&ctx->vb_q;

 if (ctx->state & DVB_VB2_STATE_INIT)
  vb2_core_queue_release(q);

 ctx->state = DVB_VB2_STATE_NONE;
 dprintk(3, "[%s]\n", ctx->name);

 return 0;
}
