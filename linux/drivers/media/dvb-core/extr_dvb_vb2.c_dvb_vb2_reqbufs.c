
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_vb2_ctx {scalar_t__ buf_siz; int buf_cnt; int name; int state; int vb_q; } ;
struct dmx_requestbuffers {scalar_t__ size; int count; } ;


 scalar_t__ DVB_V2_MAX_SIZE ;
 int DVB_VB2_STATE_NONE ;
 int DVB_VB2_STATE_REQBUFS ;
 int VB2_MEMORY_MMAP ;
 int dprintk (int,char*,int ,int ,scalar_t__,...) ;
 int vb2_core_reqbufs (int *,int ,int *) ;

int dvb_vb2_reqbufs(struct dvb_vb2_ctx *ctx, struct dmx_requestbuffers *req)
{
 int ret;


 if (req->size > DVB_V2_MAX_SIZE)
  req->size = DVB_V2_MAX_SIZE;



 ctx->buf_siz = req->size;
 ctx->buf_cnt = req->count;
 ret = vb2_core_reqbufs(&ctx->vb_q, VB2_MEMORY_MMAP, &req->count);
 if (ret) {
  ctx->state = DVB_VB2_STATE_NONE;
  dprintk(1, "[%s] count=%d size=%d errno=%d\n", ctx->name,
   ctx->buf_cnt, ctx->buf_siz, ret);
  return ret;
 }
 ctx->state |= DVB_VB2_STATE_REQBUFS;
 dprintk(3, "[%s] count=%d size=%d\n", ctx->name,
  ctx->buf_cnt, ctx->buf_siz);

 return 0;
}
