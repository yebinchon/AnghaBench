
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct dvb_vb2_ctx {int name; } ;


 int dprintk (int,char*,int ,unsigned int) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int _start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vq);

 dprintk(3, "[%s] count=%d\n", ctx->name, count);
 return 0;
}
