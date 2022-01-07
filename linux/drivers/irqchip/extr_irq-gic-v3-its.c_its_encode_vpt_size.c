
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int ,int,int ) ;

__attribute__((used)) static void its_encode_vpt_size(struct its_cmd_block *cmd, u8 vpt_size)
{
 its_mask_encode(&cmd->raw_cmd[3], vpt_size, 4, 0);
}
