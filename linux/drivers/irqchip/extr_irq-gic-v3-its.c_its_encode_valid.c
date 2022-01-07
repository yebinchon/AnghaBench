
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int,int,int) ;

__attribute__((used)) static void its_encode_valid(struct its_cmd_block *cmd, int valid)
{
 its_mask_encode(&cmd->raw_cmd[2], !!valid, 63, 63);
}
