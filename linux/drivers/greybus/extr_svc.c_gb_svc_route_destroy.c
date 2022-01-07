
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_svc_route_destroy_request {void* intf2_id; void* intf1_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int request ;


 int GB_SVC_TYPE_ROUTE_DESTROY ;
 int dev_err (int *,char*,void*,void*,int) ;
 int gb_operation_sync (int ,int ,struct gb_svc_route_destroy_request*,int,int *,int ) ;

void gb_svc_route_destroy(struct gb_svc *svc, u8 intf1_id, u8 intf2_id)
{
 struct gb_svc_route_destroy_request request;
 int ret;

 request.intf1_id = intf1_id;
 request.intf2_id = intf2_id;

 ret = gb_operation_sync(svc->connection, GB_SVC_TYPE_ROUTE_DESTROY,
    &request, sizeof(request), ((void*)0), 0);
 if (ret) {
  dev_err(&svc->dev, "failed to destroy route (%u %u): %d\n",
   intf1_id, intf2_id, ret);
 }
}
