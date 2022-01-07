
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {scalar_t__ num_planes; } ;
struct TYPE_2__ {int * planes; } ;
struct v4l2_buffer {scalar_t__ length; TYPE_1__ m; int type; } ;


 int EINVAL ;
 int V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 scalar_t__ VB2_MAX_PLANES ;
 int dprintk (int,char*,...) ;

__attribute__((used)) static int __verify_planes_array(struct vb2_buffer *vb, const struct v4l2_buffer *b)
{
 if (!V4L2_TYPE_IS_MULTIPLANAR(b->type))
  return 0;


 if (b->m.planes == ((void*)0)) {
  dprintk(1, "multi-planar buffer passed but planes array not provided\n");
  return -EINVAL;
 }

 if (b->length < vb->num_planes || b->length > VB2_MAX_PLANES) {
  dprintk(1, "incorrect planes array length, expected %d, got %d\n",
   vb->num_planes, b->length);
  return -EINVAL;
 }

 return 0;
}
