
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int ,int,int ) ;

__attribute__((used)) static void its_encode_cmd(struct its_cmd_block *cmd, u8 cmd_nr)
{
 its_mask_encode(&cmd->raw_cmd[0], cmd_nr, 7, 0);
}
