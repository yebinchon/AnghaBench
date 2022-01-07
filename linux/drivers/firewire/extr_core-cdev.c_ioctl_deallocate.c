
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;
union ioctl_arg {TYPE_1__ deallocate; } ;
struct client {int dummy; } ;


 int release_address_handler ;
 int release_client_resource (struct client*,int ,int ,int *) ;

__attribute__((used)) static int ioctl_deallocate(struct client *client, union ioctl_arg *arg)
{
 return release_client_resource(client, arg->deallocate.handle,
           release_address_handler, ((void*)0));
}
