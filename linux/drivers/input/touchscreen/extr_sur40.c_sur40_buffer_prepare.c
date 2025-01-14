
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct TYPE_3__ {unsigned long sizeimage; } ;
struct sur40_state {TYPE_2__* usbdev; TYPE_1__ pix_fmt; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,unsigned long,unsigned long) ;
 struct sur40_state* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned long) ;

__attribute__((used)) static int sur40_buffer_prepare(struct vb2_buffer *vb)
{
 struct sur40_state *sur40 = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = sur40->pix_fmt.sizeimage;

 if (vb2_plane_size(vb, 0) < size) {
  dev_err(&sur40->usbdev->dev, "buffer too small (%lu < %lu)\n",
    vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, size);
 return 0;
}
