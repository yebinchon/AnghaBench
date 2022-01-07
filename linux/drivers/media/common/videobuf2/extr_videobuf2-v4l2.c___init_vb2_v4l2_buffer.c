
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int request_fd; } ;
struct vb2_buffer {int dummy; } ;


 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;

__attribute__((used)) static void __init_vb2_v4l2_buffer(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);

 vbuf->request_fd = -1;
}
