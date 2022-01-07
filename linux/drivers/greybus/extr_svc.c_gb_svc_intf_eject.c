
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc_intf_eject_request {int intf_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int request ;


 int GB_SVC_TYPE_INTF_EJECT ;
 int SVC_INTF_EJECT_TIMEOUT ;
 int dev_err (int *,char*,int ) ;
 int gb_operation_sync_timeout (int ,int ,struct gb_svc_intf_eject_request*,int,int *,int ,int ) ;

int gb_svc_intf_eject(struct gb_svc *svc, u8 intf_id)
{
 struct gb_svc_intf_eject_request request;
 int ret;

 request.intf_id = intf_id;





 ret = gb_operation_sync_timeout(svc->connection,
     GB_SVC_TYPE_INTF_EJECT, &request,
     sizeof(request), ((void*)0), 0,
     SVC_INTF_EJECT_TIMEOUT);
 if (ret) {
  dev_err(&svc->dev, "failed to eject interface %u\n", intf_id);
  return ret;
 }

 return 0;
}
