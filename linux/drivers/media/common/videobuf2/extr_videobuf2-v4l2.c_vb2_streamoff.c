
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int dprintk (int,char*) ;
 int vb2_core_streamoff (struct vb2_queue*,int) ;
 scalar_t__ vb2_fileio_is_active (struct vb2_queue*) ;

int vb2_streamoff(struct vb2_queue *q, enum v4l2_buf_type type)
{
 if (vb2_fileio_is_active(q)) {
  dprintk(1, "file io in progress\n");
  return -EBUSY;
 }
 return vb2_core_streamoff(q, type);
}
