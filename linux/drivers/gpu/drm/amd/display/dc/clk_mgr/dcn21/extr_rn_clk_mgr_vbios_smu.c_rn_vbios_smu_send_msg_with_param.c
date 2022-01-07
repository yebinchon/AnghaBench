
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mgr_internal {int dummy; } ;


 int CONTENT ;
 int MP1_SMN_C2PMSG_67 ;
 int MP1_SMN_C2PMSG_83 ;
 int MP1_SMN_C2PMSG_91 ;
 int REG_READ (int ) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 int REG_WRITE (int ,unsigned int) ;

int rn_vbios_smu_send_msg_with_param(struct clk_mgr_internal *clk_mgr, unsigned int msg_id, unsigned int param)
{

 REG_WRITE(MP1_SMN_C2PMSG_91, 0);


 REG_WRITE(MP1_SMN_C2PMSG_83, param);


 REG_WRITE(MP1_SMN_C2PMSG_67, msg_id);

 REG_WAIT(MP1_SMN_C2PMSG_91, CONTENT, 1, 10, 200000);


 return REG_READ(MP1_SMN_C2PMSG_83);
}
