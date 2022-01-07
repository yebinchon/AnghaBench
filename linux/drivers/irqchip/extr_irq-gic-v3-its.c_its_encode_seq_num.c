
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int ,int,int) ;

__attribute__((used)) static void its_encode_seq_num(struct its_cmd_block *cmd, u16 seq_num)
{
 its_mask_encode(&cmd->raw_cmd[0], seq_num, 47, 32);
}
