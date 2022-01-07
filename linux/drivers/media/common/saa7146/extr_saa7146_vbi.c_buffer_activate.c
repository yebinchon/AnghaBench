
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeout; } ;
struct saa7146_vv {TYPE_2__ vbi_dmaq; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct TYPE_3__ {int state; } ;
struct saa7146_buf {TYPE_1__ vb; } ;


 scalar_t__ BUFFER_TIMEOUT ;
 int DEB_VBI (char*,struct saa7146_dev*,struct saa7146_buf*,struct saa7146_buf*) ;
 int VIDEOBUF_ACTIVE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int saa7146_set_vbi_capture (struct saa7146_dev*,struct saa7146_buf*,struct saa7146_buf*) ;

__attribute__((used)) static int buffer_activate(struct saa7146_dev *dev,
      struct saa7146_buf *buf,
      struct saa7146_buf *next)
{
 struct saa7146_vv *vv = dev->vv_data;
 buf->vb.state = VIDEOBUF_ACTIVE;

 DEB_VBI("dev:%p, buf:%p, next:%p\n", dev, buf, next);
 saa7146_set_vbi_capture(dev,buf,next);

 mod_timer(&vv->vbi_dmaq.timeout, jiffies+BUFFER_TIMEOUT);
 return 0;
}
