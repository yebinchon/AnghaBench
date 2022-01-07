
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cdev_flush_iso {scalar_t__ handle; } ;
union ioctl_arg {struct fw_cdev_flush_iso flush_iso; } ;
struct client {int * iso_context; } ;


 int EINVAL ;
 int fw_iso_context_flush_completions (int *) ;

__attribute__((used)) static int ioctl_flush_iso(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_flush_iso *a = &arg->flush_iso;

 if (client->iso_context == ((void*)0) || a->handle != 0)
  return -EINVAL;

 return fw_iso_context_flush_completions(client->iso_context);
}
