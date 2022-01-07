
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {int dev; } ;
struct videobuf_dmabuf {int dummy; } ;
struct saa7146_dev {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct saa7146_buf {TYPE_1__ vb; } ;


 int BUG_ON (int ) ;
 int DEB_EE (char*,struct saa7146_dev*,struct saa7146_buf*) ;
 int VIDEOBUF_NEEDS_INIT ;
 int in_interrupt () ;
 int videobuf_dma_free (struct videobuf_dmabuf*) ;
 int videobuf_dma_unmap (int ,struct videobuf_dmabuf*) ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_1__*) ;
 int videobuf_waiton (struct videobuf_queue*,TYPE_1__*,int ,int ) ;

void saa7146_dma_free(struct saa7146_dev *dev,struct videobuf_queue *q,
      struct saa7146_buf *buf)
{
 struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);
 DEB_EE("dev:%p, buf:%p\n", dev, buf);

 BUG_ON(in_interrupt());

 videobuf_waiton(q, &buf->vb, 0, 0);
 videobuf_dma_unmap(q->dev, dma);
 videobuf_dma_free(dma);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}
