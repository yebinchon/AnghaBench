
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_REMOTE_AU_TABLE0_TO3 ;
 int SEND_CM_REMOTE_AU_TABLE4_TO7 ;
 int assign_cm_au_table (struct hfi1_devdata*,int ,int ,int ) ;
 int vcu_to_cu (int ) ;

void assign_remote_cm_au_table(struct hfi1_devdata *dd, u8 vcu)
{
 assign_cm_au_table(dd, vcu_to_cu(vcu), SEND_CM_REMOTE_AU_TABLE0_TO3,
      SEND_CM_REMOTE_AU_TABLE4_TO7);
}
