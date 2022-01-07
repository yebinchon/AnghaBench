
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc_pwrmon_rail_count_get_response {int rail_count; } ;
struct gb_svc {int dev; int connection; } ;
typedef int response ;


 int GB_SVC_TYPE_PWRMON_RAIL_COUNT_GET ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_svc_pwrmon_rail_count_get_response*,int) ;

__attribute__((used)) static int gb_svc_pwrmon_rail_count_get(struct gb_svc *svc, u8 *value)
{
 struct gb_svc_pwrmon_rail_count_get_response response;
 int ret;

 ret = gb_operation_sync(svc->connection,
    GB_SVC_TYPE_PWRMON_RAIL_COUNT_GET, ((void*)0), 0,
    &response, sizeof(response));
 if (ret) {
  dev_err(&svc->dev, "failed to get rail count: %d\n", ret);
  return ret;
 }

 *value = response.rail_count;

 return 0;
}
