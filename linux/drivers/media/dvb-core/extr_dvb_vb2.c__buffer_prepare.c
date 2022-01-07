
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct dvb_vb2_ctx {unsigned long buf_siz; int name; } ;


 int EINVAL ;
 int dprintk (int,char*,int ,...) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned long) ;

__attribute__((used)) static int _buffer_prepare(struct vb2_buffer *vb)
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = ctx->buf_siz;

 if (vb2_plane_size(vb, 0) < size) {
  dprintk(1, "[%s] data will not fit into plane (%lu < %lu)\n",
   ctx->name, vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, size);
 dprintk(3, "[%s]\n", ctx->name);

 return 0;
}
