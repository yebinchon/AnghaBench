
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_svc_intf_device_id_request {void* device_id; void* intf_id; } ;
struct gb_svc {int connection; } ;
typedef int request ;


 int GB_SVC_TYPE_INTF_DEVICE_ID ;
 int gb_operation_sync (int ,int ,struct gb_svc_intf_device_id_request*,int,int *,int ) ;

int gb_svc_intf_device_id(struct gb_svc *svc, u8 intf_id, u8 device_id)
{
 struct gb_svc_intf_device_id_request request;

 request.intf_id = intf_id;
 request.device_id = device_id;

 return gb_operation_sync(svc->connection, GB_SVC_TYPE_INTF_DEVICE_ID,
     &request, sizeof(request), ((void*)0), 0);
}
