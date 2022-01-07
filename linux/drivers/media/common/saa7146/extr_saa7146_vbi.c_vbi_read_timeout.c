
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct saa7146_vv {struct file* vbi_read_timeout_file; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;


 int DEB_VBI (char*,struct saa7146_dev*,struct saa7146_fh*) ;
 struct saa7146_vv* from_timer (int ,struct timer_list*,void (*) (struct timer_list*)) ;
 int vbi_stop (struct saa7146_fh*,struct file*) ;
 struct saa7146_vv* vv ;

__attribute__((used)) static void vbi_read_timeout(struct timer_list *t)
{
 struct saa7146_vv *vv = from_timer(vv, t, vbi_read_timeout);
 struct file *file = vv->vbi_read_timeout_file;
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;

 DEB_VBI("dev:%p, fh:%p\n", dev, fh);

 vbi_stop(fh, file);
}
