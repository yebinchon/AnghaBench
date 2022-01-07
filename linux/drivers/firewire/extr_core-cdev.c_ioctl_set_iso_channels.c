
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cdev_set_iso_channels {scalar_t__ handle; int channels; } ;
union ioctl_arg {struct fw_cdev_set_iso_channels set_iso_channels; } ;
struct fw_iso_context {int dummy; } ;
struct client {struct fw_iso_context* iso_context; } ;


 int EINVAL ;
 int fw_iso_context_set_channels (struct fw_iso_context*,int *) ;

__attribute__((used)) static int ioctl_set_iso_channels(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_set_iso_channels *a = &arg->set_iso_channels;
 struct fw_iso_context *ctx = client->iso_context;

 if (ctx == ((void*)0) || a->handle != 0)
  return -EINVAL;

 return fw_iso_context_set_channels(ctx, &a->channels);
}
