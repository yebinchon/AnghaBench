
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_info {int page; } ;
struct xenbus_device {int dev; } ;


 int PAGE_SIZE ;
 struct xenkbd_info* dev_get_drvdata (int *) ;
 int memset (int ,int ,int ) ;
 int xenkbd_connect_backend (struct xenbus_device*,struct xenkbd_info*) ;
 int xenkbd_disconnect_backend (struct xenkbd_info*) ;

__attribute__((used)) static int xenkbd_resume(struct xenbus_device *dev)
{
 struct xenkbd_info *info = dev_get_drvdata(&dev->dev);

 xenkbd_disconnect_backend(info);
 memset(info->page, 0, PAGE_SIZE);
 return xenkbd_connect_backend(dev, info);
}
