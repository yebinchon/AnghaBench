
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int buf_struct_size; int min_buffers_needed; scalar_t__ num_buffers; int * buf_ops; int * mem_ops; int * ops; struct dvb_vb2_ctx* drv_priv; int io_modes; scalar_t__ is_output; int type; } ;
struct dvb_vb2_ctx {int nonblocking; int name; int state; int dvb_q; int slock; int mutex; struct vb2_queue vb_q; } ;
struct dvb_buffer {int dummy; } ;


 int DVB_BUF_TYPE_CAPTURE ;
 int DVB_VB2_NAME_MAX ;
 int DVB_VB2_STATE_INIT ;
 int DVB_VB2_STATE_NONE ;
 int INIT_LIST_HEAD (int *) ;
 int VB2_MMAP ;
 int dprintk (int,char*,int ,...) ;
 int dvb_vb2_buf_ops ;
 int dvb_vb2_qops ;
 int memset (struct dvb_vb2_ctx*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char const*,int ) ;
 int vb2_core_queue_init (struct vb2_queue*) ;
 int vb2_vmalloc_memops ;

int dvb_vb2_init(struct dvb_vb2_ctx *ctx, const char *name, int nonblocking)
{
 struct vb2_queue *q = &ctx->vb_q;
 int ret;

 memset(ctx, 0, sizeof(struct dvb_vb2_ctx));
 q->type = DVB_BUF_TYPE_CAPTURE;

 q->is_output = 0;

 q->io_modes = VB2_MMAP;
 q->drv_priv = ctx;
 q->buf_struct_size = sizeof(struct dvb_buffer);
 q->min_buffers_needed = 1;
 q->ops = &dvb_vb2_qops;
 q->mem_ops = &vb2_vmalloc_memops;
 q->buf_ops = &dvb_vb2_buf_ops;
 q->num_buffers = 0;
 ret = vb2_core_queue_init(q);
 if (ret) {
  ctx->state = DVB_VB2_STATE_NONE;
  dprintk(1, "[%s] errno=%d\n", ctx->name, ret);
  return ret;
 }

 mutex_init(&ctx->mutex);
 spin_lock_init(&ctx->slock);
 INIT_LIST_HEAD(&ctx->dvb_q);

 strscpy(ctx->name, name, DVB_VB2_NAME_MAX);
 ctx->nonblocking = nonblocking;
 ctx->state = DVB_VB2_STATE_INIT;

 dprintk(3, "[%s]\n", ctx->name);

 return 0;
}
