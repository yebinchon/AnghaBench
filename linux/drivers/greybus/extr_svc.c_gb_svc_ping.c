
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int connection; } ;


 int GB_OPERATION_TIMEOUT_DEFAULT ;
 int GB_SVC_TYPE_PING ;
 int gb_operation_sync_timeout (int ,int ,int *,int ,int *,int ,int) ;

int gb_svc_ping(struct gb_svc *svc)
{
 return gb_operation_sync_timeout(svc->connection, GB_SVC_TYPE_PING,
      ((void*)0), 0, ((void*)0), 0,
      GB_OPERATION_TIMEOUT_DEFAULT * 2);
}
