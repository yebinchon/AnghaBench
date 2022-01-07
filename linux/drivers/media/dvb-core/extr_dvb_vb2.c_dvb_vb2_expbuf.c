
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct dvb_vb2_ctx {int name; struct vb2_queue vb_q; } ;
struct dmx_exportbuffer {int fd; int index; int flags; } ;


 int dprintk (int,char*,int ,int ,int) ;
 int vb2_core_expbuf (struct vb2_queue*,int*,int ,int ,int ,int ) ;

int dvb_vb2_expbuf(struct dvb_vb2_ctx *ctx, struct dmx_exportbuffer *exp)
{
 struct vb2_queue *q = &ctx->vb_q;
 int ret;

 ret = vb2_core_expbuf(&ctx->vb_q, &exp->fd, q->type, exp->index,
         0, exp->flags);
 if (ret) {
  dprintk(1, "[%s] index=%d errno=%d\n", ctx->name,
   exp->index, ret);
  return ret;
 }
 dprintk(3, "[%s] index=%d fd=%d\n", ctx->name, exp->index, exp->fd);

 return 0;
}
