
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_control_disconnected_request {int cport_id; } ;
struct gb_control {int connection; } ;
typedef int request ;


 int GB_CONTROL_TYPE_DISCONNECTED ;
 int cpu_to_le16 (int ) ;
 int gb_operation_sync (int ,int ,struct gb_control_disconnected_request*,int,int *,int ) ;

int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id)
{
 struct gb_control_disconnected_request request;

 request.cport_id = cpu_to_le16(cport_id);
 return gb_operation_sync(control->connection,
     GB_CONTROL_TYPE_DISCONNECTED, &request,
     sizeof(request), ((void*)0), 0);
}
