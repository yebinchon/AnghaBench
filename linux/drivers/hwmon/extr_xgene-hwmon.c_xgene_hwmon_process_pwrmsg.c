
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_hwmon_dev {int dummy; } ;
struct slimpro_resp_msg {int msg; } ;


 scalar_t__ MSG_SUBTYPE (int ) ;
 scalar_t__ PWRMGMT_SUBTYPE_TPC ;
 scalar_t__ TPC_ALARM ;
 scalar_t__ TPC_CMD (int ) ;
 int xgene_hwmon_tpc_alarm (struct xgene_hwmon_dev*,struct slimpro_resp_msg*) ;

__attribute__((used)) static void xgene_hwmon_process_pwrmsg(struct xgene_hwmon_dev *ctx,
           struct slimpro_resp_msg *amsg)
{
 if ((MSG_SUBTYPE(amsg->msg) == PWRMGMT_SUBTYPE_TPC) &&
     (TPC_CMD(amsg->msg) == TPC_ALARM))
  xgene_hwmon_tpc_alarm(ctx, amsg);
}
