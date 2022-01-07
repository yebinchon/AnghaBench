
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct dvb_vb2_ctx {int name; int mutex; } ;


 int dprintk (int,char*,int ) ;
 scalar_t__ mutex_is_locked (int *) ;
 int mutex_unlock (int *) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void _dmxdev_unlock(struct vb2_queue *vq)
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vq);

 if (mutex_is_locked(&ctx->mutex))
  mutex_unlock(&ctx->mutex);
 dprintk(3, "[%s]\n", ctx->name);
}
