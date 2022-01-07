
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct saa7146_vv {TYPE_1__* standard; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static int vidioc_g_std(struct file *file, void *fh, v4l2_std_id *norm)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;

 *norm = vv->standard->id;
 return 0;
}
