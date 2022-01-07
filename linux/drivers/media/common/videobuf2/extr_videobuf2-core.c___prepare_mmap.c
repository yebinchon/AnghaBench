
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int planes; int vb2_queue; } ;


 int buf_prepare ;
 int call_bufop (int ,int ,struct vb2_buffer*,int ) ;
 int call_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int fill_vb2_buffer ;

__attribute__((used)) static int __prepare_mmap(struct vb2_buffer *vb)
{
 int ret = 0;

 ret = call_bufop(vb->vb2_queue, fill_vb2_buffer,
    vb, vb->planes);
 return ret ? ret : call_vb_qop(vb, buf_prepare, vb);
}
