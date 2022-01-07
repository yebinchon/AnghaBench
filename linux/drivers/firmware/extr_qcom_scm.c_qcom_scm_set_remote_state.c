
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_set_remote_state (int ,int ,int ) ;
 TYPE_1__* __scm ;

int qcom_scm_set_remote_state(u32 state, u32 id)
{
 return __qcom_scm_set_remote_state(__scm->dev, state, id);
}
