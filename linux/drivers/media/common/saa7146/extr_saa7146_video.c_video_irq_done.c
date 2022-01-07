
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dmaqueue {int * curr; } ;
struct saa7146_vv {struct saa7146_dmaqueue video_dmaq; } ;
struct saa7146_dev {int slock; struct saa7146_vv* vv_data; } ;


 int DEB_CAP (char*) ;
 int VIDEOBUF_DONE ;
 int saa7146_buffer_finish (struct saa7146_dev*,struct saa7146_dmaqueue*,int ) ;
 int saa7146_buffer_next (struct saa7146_dev*,struct saa7146_dmaqueue*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void video_irq_done(struct saa7146_dev *dev, unsigned long st)
{
 struct saa7146_vv *vv = dev->vv_data;
 struct saa7146_dmaqueue *q = &vv->video_dmaq;

 spin_lock(&dev->slock);
 DEB_CAP("called\n");


 if( ((void*)0) != q->curr ) {
  saa7146_buffer_finish(dev,q,VIDEOBUF_DONE);
 }
 saa7146_buffer_next(dev,q,0);

 spin_unlock(&dev->slock);
}
