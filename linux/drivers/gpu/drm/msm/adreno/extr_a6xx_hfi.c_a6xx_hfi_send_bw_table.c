
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_hfi_msg_bw_table {int bw_level_num; int ddr_cmds_num; int ddr_wait_bitmask; int* ddr_cmds_addrs; int** ddr_cmds_data; int cnoc_cmds_num; int cnoc_wait_bitmask; int* cnoc_cmds_addrs; int** cnoc_cmds_data; int member_0; } ;
struct a6xx_gmu {int dummy; } ;
typedef int msg ;


 int HFI_H2F_MSG_BW_TABLE ;
 int a6xx_hfi_send_msg (struct a6xx_gmu*,int ,struct a6xx_hfi_msg_bw_table*,int,int *,int ) ;

__attribute__((used)) static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
{
 struct a6xx_hfi_msg_bw_table msg = { 0 };







 msg.bw_level_num = 1;

 msg.ddr_cmds_num = 3;
 msg.ddr_wait_bitmask = 0x07;

 msg.ddr_cmds_addrs[0] = 0x50000;
 msg.ddr_cmds_addrs[1] = 0x5005c;
 msg.ddr_cmds_addrs[2] = 0x5000c;

 msg.ddr_cmds_data[0][0] = 0x40000000;
 msg.ddr_cmds_data[0][1] = 0x40000000;
 msg.ddr_cmds_data[0][2] = 0x40000000;






 msg.cnoc_cmds_num = 3;
 msg.cnoc_wait_bitmask = 0x05;

 msg.cnoc_cmds_addrs[0] = 0x50034;
 msg.cnoc_cmds_addrs[1] = 0x5007c;
 msg.cnoc_cmds_addrs[2] = 0x5004c;

 msg.cnoc_cmds_data[0][0] = 0x40000000;
 msg.cnoc_cmds_data[0][1] = 0x00000000;
 msg.cnoc_cmds_data[0][2] = 0x40000000;

 msg.cnoc_cmds_data[1][0] = 0x60000001;
 msg.cnoc_cmds_data[1][1] = 0x20000001;
 msg.cnoc_cmds_data[1][2] = 0x60000001;

 return a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_BW_TABLE, &msg, sizeof(msg),
  ((void*)0), 0);
}
