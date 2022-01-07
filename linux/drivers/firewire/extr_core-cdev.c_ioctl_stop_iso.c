
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cdev_stop_iso {scalar_t__ handle; } ;
union ioctl_arg {struct fw_cdev_stop_iso stop_iso; } ;
struct client {int * iso_context; } ;


 int EINVAL ;
 int fw_iso_context_stop (int *) ;

__attribute__((used)) static int ioctl_stop_iso(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_stop_iso *a = &arg->stop_iso;

 if (client->iso_context == ((void*)0) || a->handle != 0)
  return -EINVAL;

 return fw_iso_context_stop(client->iso_context);
}
