
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ioctl_arg {int allocate_iso_resource; } ;
struct client {int dummy; } ;


 int ISO_RES_DEALLOC_ONCE ;
 int init_iso_resource (struct client*,int *,int ) ;

__attribute__((used)) static int ioctl_deallocate_iso_resource_once(struct client *client,
           union ioctl_arg *arg)
{
 return init_iso_resource(client,
   &arg->allocate_iso_resource, ISO_RES_DEALLOC_ONCE);
}
