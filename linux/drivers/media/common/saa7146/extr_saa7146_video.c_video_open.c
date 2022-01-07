
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_fh {int video_q; } ;
struct saa7146_dev {int v4l2_lock; int slock; TYPE_1__* pci; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int video_qops ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int ,int ,int,struct file*,int *) ;

__attribute__((used)) static int video_open(struct saa7146_dev *dev, struct file *file)
{
 struct saa7146_fh *fh = file->private_data;

 videobuf_queue_sg_init(&fh->video_q, &video_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VIDEO_CAPTURE,
       V4L2_FIELD_INTERLACED,
       sizeof(struct saa7146_buf),
       file, &dev->v4l2_lock);

 return 0;
}
