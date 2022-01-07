
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_vv {int video_status; struct saa7146_fh* video_fh; } ;
struct saa7146_fh {int vbi_q; int video_q; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int DEB_D (char*,...) ;
 int DEB_S (char*) ;
 int EBUSY ;
 int EINVAL ;
 int STATUS_CAPTURE ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int video_end (struct saa7146_fh*,struct file*) ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *__fh, enum v4l2_buf_type type)
{
 struct saa7146_fh *fh = __fh;
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 int err;

 DEB_D("VIDIOC_STREAMOFF, type:%d\n", type);




 if ((vv->video_status & STATUS_CAPTURE) != STATUS_CAPTURE) {
  DEB_S("not capturing\n");
  return 0;
 }

 if (vv->video_fh != fh) {
  DEB_S("capturing, but in another open\n");
  return -EBUSY;
 }

 err = -EINVAL;
 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  err = videobuf_streamoff(&fh->video_q);
 else if (type == V4L2_BUF_TYPE_VBI_CAPTURE)
  err = videobuf_streamoff(&fh->vbi_q);
 if (0 != err) {
  DEB_D("warning: videobuf_streamoff() failed\n");
  video_end(fh, file);
 } else {
  err = video_end(fh, file);
 }
 return err;
}
