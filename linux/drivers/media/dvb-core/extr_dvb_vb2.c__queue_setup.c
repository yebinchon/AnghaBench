
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct dvb_vb2_ctx {unsigned int buf_cnt; unsigned int buf_siz; int name; } ;
struct device {int dummy; } ;


 int dprintk (int,char*,int ,unsigned int,unsigned int) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int _queue_setup(struct vb2_queue *vq,
   unsigned int *nbuffers, unsigned int *nplanes,
   unsigned int sizes[], struct device *alloc_devs[])
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vq);

 ctx->buf_cnt = *nbuffers;
 *nplanes = 1;
 sizes[0] = ctx->buf_siz;






 dprintk(3, "[%s] count=%d, size=%d\n", ctx->name,
  *nbuffers, sizes[0]);

 return 0;
}
