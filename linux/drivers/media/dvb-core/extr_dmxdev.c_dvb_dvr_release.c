
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {int users; int wait_queue; int readers; struct dmxdev* priv; } ;
struct TYPE_4__ {int * data; } ;
struct dmxdev {int exit; int mutex; int lock; TYPE_1__ dvr_buffer; int dvr_vb2_ctx; scalar_t__ may_do_mmap; int dvr_orig_fe; TYPE_2__* demux; } ;
struct TYPE_5__ {int (* connect_frontend ) (TYPE_2__*,int ) ;int (* disconnect_frontend ) (TYPE_2__*) ;} ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 scalar_t__ dvb_vb2_is_streaming (int *) ;
 int dvb_vb2_release (int *) ;
 int dvb_vb2_stream_off (int *) ;
 int mb () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int ) ;
 int vfree (void*) ;
 int wake_up (int *) ;

__attribute__((used)) static int dvb_dvr_release(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct dmxdev *dmxdev = dvbdev->priv;

 mutex_lock(&dmxdev->mutex);

 if ((file->f_flags & O_ACCMODE) == O_WRONLY) {
  dmxdev->demux->disconnect_frontend(dmxdev->demux);
  dmxdev->demux->connect_frontend(dmxdev->demux,
      dmxdev->dvr_orig_fe);
 }

 if (((file->f_flags & O_ACCMODE) == O_RDONLY) ||
     dmxdev->may_do_mmap) {
  if (dmxdev->may_do_mmap) {
   if (dvb_vb2_is_streaming(&dmxdev->dvr_vb2_ctx))
    dvb_vb2_stream_off(&dmxdev->dvr_vb2_ctx);
   dvb_vb2_release(&dmxdev->dvr_vb2_ctx);
  }
  dvbdev->readers++;
  if (dmxdev->dvr_buffer.data) {
   void *mem = dmxdev->dvr_buffer.data;

   mb();
   spin_lock_irq(&dmxdev->lock);
   dmxdev->dvr_buffer.data = ((void*)0);
   spin_unlock_irq(&dmxdev->lock);
   vfree(mem);
  }
 }

 dvbdev->users--;
 if (dvbdev->users == 1 && dmxdev->exit == 1) {
  mutex_unlock(&dmxdev->mutex);
  wake_up(&dvbdev->wait_queue);
 } else
  mutex_unlock(&dmxdev->mutex);

 return 0;
}
