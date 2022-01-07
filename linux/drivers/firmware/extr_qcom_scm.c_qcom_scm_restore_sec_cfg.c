
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_restore_sec_cfg (int ,int ,int ) ;
 TYPE_1__* __scm ;

int qcom_scm_restore_sec_cfg(u32 device_id, u32 spare)
{
 return __qcom_scm_restore_sec_cfg(__scm->dev, device_id, spare);
}
