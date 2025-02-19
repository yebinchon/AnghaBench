
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; scalar_t__ bus_info; scalar_t__ card; scalar_t__ driver; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_2__* ext_vv_data; int pci; TYPE_1__* ext; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_3__ {char* name; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 char* pci_name (int ) ;
 int sprintf (char*,char*,char*) ;
 int strscpy (char*,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;

 strscpy((char *)cap->driver, "saa7146 v4l2", sizeof(cap->driver));
 strscpy((char *)cap->card, dev->ext->name, sizeof(cap->card));
 sprintf((char *)cap->bus_info, "PCI:%s", pci_name(dev->pci));
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OVERLAY |
       V4L2_CAP_READWRITE | V4L2_CAP_STREAMING |
       V4L2_CAP_DEVICE_CAPS;
 cap->capabilities |= dev->ext_vv_data->capabilities;
 return 0;
}
