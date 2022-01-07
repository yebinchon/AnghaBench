
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_info {scalar_t__ page; scalar_t__ mtouch; scalar_t__ ptr; scalar_t__ kbd; } ;
struct xenbus_device {int dev; } ;


 struct xenkbd_info* dev_get_drvdata (int *) ;
 int free_page (unsigned long) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct xenkbd_info*) ;
 int xenkbd_disconnect_backend (struct xenkbd_info*) ;

__attribute__((used)) static int xenkbd_remove(struct xenbus_device *dev)
{
 struct xenkbd_info *info = dev_get_drvdata(&dev->dev);

 xenkbd_disconnect_backend(info);
 if (info->kbd)
  input_unregister_device(info->kbd);
 if (info->ptr)
  input_unregister_device(info->ptr);
 if (info->mtouch)
  input_unregister_device(info->mtouch);
 free_page((unsigned long)info->page);
 kfree(info);
 return 0;
}
