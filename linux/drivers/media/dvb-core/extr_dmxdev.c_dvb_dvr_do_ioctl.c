
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct dmxdev* priv; } ;
struct dmxdev {int mutex; int dvr_vb2_ctx; } ;
 int ENOTTY ;
 int ERESTARTSYS ;
 int dvb_dvr_set_buffer_size (struct dmxdev*,unsigned long) ;
 int dvb_vb2_dqbuf (int *,void*) ;
 int dvb_vb2_expbuf (int *,void*) ;
 int dvb_vb2_is_streaming (int *) ;
 int dvb_vb2_qbuf (int *,void*) ;
 int dvb_vb2_querybuf (int *,void*) ;
 int dvb_vb2_reqbufs (int *,void*) ;
 int dvb_vb2_stream_on (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvb_dvr_do_ioctl(struct file *file,
       unsigned int cmd, void *parg)
{
 struct dvb_device *dvbdev = file->private_data;
 struct dmxdev *dmxdev = dvbdev->priv;
 unsigned long arg = (unsigned long)parg;
 int ret;

 if (mutex_lock_interruptible(&dmxdev->mutex))
  return -ERESTARTSYS;

 switch (cmd) {
 case 128:
  ret = dvb_dvr_set_buffer_size(dmxdev, arg);
  break;
 default:
  ret = -ENOTTY;
  break;
 }
 mutex_unlock(&dmxdev->mutex);
 return ret;
}
