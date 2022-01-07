
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;


 int __verify_planes_array (struct vb2_buffer*,void const*) ;

__attribute__((used)) static int __verify_planes_array_core(struct vb2_buffer *vb, const void *pb)
{
 return __verify_planes_array(vb, pb);
}
