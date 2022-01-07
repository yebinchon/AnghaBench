
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_plane {scalar_t__ bytesused; } ;
struct vb2_buffer {int vb2_queue; } ;
struct dvb_vb2_ctx {int name; } ;


 int dprintk (int,char*,int ) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static int _fill_vb2_buffer(struct vb2_buffer *vb, struct vb2_plane *planes)
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 planes[0].bytesused = 0;
 dprintk(3, "[%s]\n", ctx->name);

 return 0;
}
