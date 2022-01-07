
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct dvb_vb2_ctx {int name; int vb_q; } ;


 int dprintk (int,char*,int ,int) ;
 int vb2_mmap (int *,struct vm_area_struct*) ;

int dvb_vb2_mmap(struct dvb_vb2_ctx *ctx, struct vm_area_struct *vma)
{
 int ret;

 ret = vb2_mmap(&ctx->vb_q, vma);
 if (ret) {
  dprintk(1, "[%s] errno=%d\n", ctx->name, ret);
  return ret;
 }
 dprintk(3, "[%s] ret=%d\n", ctx->name, ret);

 return 0;
}
