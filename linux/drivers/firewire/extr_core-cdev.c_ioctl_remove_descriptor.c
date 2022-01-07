
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;
union ioctl_arg {TYPE_1__ remove_descriptor; } ;
struct client {int dummy; } ;


 int release_client_resource (struct client*,int ,int ,int *) ;
 int release_descriptor ;

__attribute__((used)) static int ioctl_remove_descriptor(struct client *client, union ioctl_arg *arg)
{
 return release_client_resource(client, arg->remove_descriptor.handle,
           release_descriptor, ((void*)0));
}
