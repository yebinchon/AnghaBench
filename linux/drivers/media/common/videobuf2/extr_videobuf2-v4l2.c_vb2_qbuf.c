
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct v4l2_buffer {int index; } ;
struct media_request {int dummy; } ;
struct media_device {int dummy; } ;


 int EBUSY ;
 int dprintk (int,char*) ;
 int media_request_put (struct media_request*) ;
 int vb2_core_qbuf (struct vb2_queue*,int ,struct v4l2_buffer*,struct media_request*) ;
 scalar_t__ vb2_fileio_is_active (struct vb2_queue*) ;
 int vb2_queue_or_prepare_buf (struct vb2_queue*,struct media_device*,struct v4l2_buffer*,int,struct media_request**) ;

int vb2_qbuf(struct vb2_queue *q, struct media_device *mdev,
      struct v4l2_buffer *b)
{
 struct media_request *req = ((void*)0);
 int ret;

 if (vb2_fileio_is_active(q)) {
  dprintk(1, "file io in progress\n");
  return -EBUSY;
 }

 ret = vb2_queue_or_prepare_buf(q, mdev, b, 0, &req);
 if (ret)
  return ret;
 ret = vb2_core_qbuf(q, b->index, b, req);
 if (req)
  media_request_put(req);
 return ret;
}
