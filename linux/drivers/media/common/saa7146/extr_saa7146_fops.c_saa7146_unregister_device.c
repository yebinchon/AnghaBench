
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct saa7146_dev {int dummy; } ;


 int DEB_EE (char*,struct saa7146_dev*) ;
 int video_unregister_device (struct video_device*) ;

int saa7146_unregister_device(struct video_device *vfd, struct saa7146_dev *dev)
{
 DEB_EE("dev:%p\n", dev);

 video_unregister_device(vfd);
 return 0;
}
