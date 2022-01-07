
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_hwmon_dev {int temp_critical_alarm; TYPE_1__* dev; } ;
struct slimpro_resp_msg {int param2; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static int xgene_hwmon_tpc_alarm(struct xgene_hwmon_dev *ctx,
     struct slimpro_resp_msg *amsg)
{
 ctx->temp_critical_alarm = !!amsg->param2;
 sysfs_notify(&ctx->dev->kobj, ((void*)0), "temp1_critical_alarm");

 return 0;
}
