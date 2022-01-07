
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* planes; int index; int vb2_queue; } ;
struct dvb_vb2_ctx {int name; } ;
struct dmx_buffer {int offset; int bytesused; int length; int index; } ;
struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {TYPE_1__ m; int bytesused; int length; } ;


 int dprintk (int,char*,int ) ;
 struct dvb_vb2_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void _fill_dmx_buffer(struct vb2_buffer *vb, void *pb)
{
 struct dvb_vb2_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct dmx_buffer *b = pb;

 b->index = vb->index;
 b->length = vb->planes[0].length;
 b->bytesused = vb->planes[0].bytesused;
 b->offset = vb->planes[0].m.offset;
 dprintk(3, "[%s]\n", ctx->name);
}
