
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct file* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct saa7146_vv {int vbi_dmaq; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;


 int DEB_VBI (char*,struct videobuf_buffer*) ;
 int saa7146_buffer_queue (struct saa7146_dev*,int *,struct saa7146_buf*) ;

__attribute__((used)) static void buffer_queue(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
 struct file *file = q->priv_data;
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct saa7146_buf *buf = (struct saa7146_buf *)vb;

 DEB_VBI("vb:%p\n", vb);
 saa7146_buffer_queue(dev, &vv->vbi_dmaq, buf);
}
