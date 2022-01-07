
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_interface {TYPE_1__* control; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_connection* connection; } ;


 int GB_CONTROL_TYPE_GET_MANIFEST ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,void*,size_t) ;

int gb_control_get_manifest_operation(struct gb_interface *intf, void *manifest,
          size_t size)
{
 struct gb_connection *connection = intf->control->connection;

 return gb_operation_sync(connection, GB_CONTROL_TYPE_GET_MANIFEST,
    ((void*)0), 0, manifest, size);
}
