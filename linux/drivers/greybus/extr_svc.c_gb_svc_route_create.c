
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_svc_route_create_request {void* dev2_id; void* intf2_id; void* dev1_id; void* intf1_id; } ;
struct gb_svc {int connection; } ;
typedef int request ;


 int GB_SVC_TYPE_ROUTE_CREATE ;
 int gb_operation_sync (int ,int ,struct gb_svc_route_create_request*,int,int *,int ) ;

int gb_svc_route_create(struct gb_svc *svc, u8 intf1_id, u8 dev1_id,
   u8 intf2_id, u8 dev2_id)
{
 struct gb_svc_route_create_request request;

 request.intf1_id = intf1_id;
 request.dev1_id = dev1_id;
 request.intf2_id = intf2_id;
 request.dev2_id = dev2_id;

 return gb_operation_sync(svc->connection, GB_SVC_TYPE_ROUTE_CREATE,
     &request, sizeof(request), ((void*)0), 0);
}
