
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dvb_vb2_ctx {int vb_q; int name; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int dprintk (int,char*,int ) ;
 int vb2_core_poll (int *,struct file*,int *) ;

__poll_t dvb_vb2_poll(struct dvb_vb2_ctx *ctx, struct file *file,
        poll_table *wait)
{
 dprintk(3, "[%s]\n", ctx->name);
 return vb2_core_poll(&ctx->vb_q, file, wait);
}
