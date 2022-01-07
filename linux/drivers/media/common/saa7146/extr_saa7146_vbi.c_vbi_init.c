
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct saa7146_dev* dev; int timeout; int queue; } ;
struct saa7146_vv {int vbi_wq; TYPE_1__ vbi_dmaq; } ;
struct saa7146_dev {int dummy; } ;


 int DEB_VBI (char*,struct saa7146_dev*) ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int saa7146_buffer_timeout ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void vbi_init(struct saa7146_dev *dev, struct saa7146_vv *vv)
{
 DEB_VBI("dev:%p\n", dev);

 INIT_LIST_HEAD(&vv->vbi_dmaq.queue);

 timer_setup(&vv->vbi_dmaq.timeout, saa7146_buffer_timeout, 0);
 vv->vbi_dmaq.dev = dev;

 init_waitqueue_head(&vv->vbi_wq);
}
