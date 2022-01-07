
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int,int ,int ) ;

__attribute__((used)) static void its_encode_db_valid(struct its_cmd_block *cmd, bool db_valid)
{
 its_mask_encode(&cmd->raw_cmd[2], db_valid, 0, 0);
}
