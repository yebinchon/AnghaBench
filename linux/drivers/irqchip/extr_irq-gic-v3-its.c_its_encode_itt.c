
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct its_cmd_block {int * raw_cmd; } ;


 int its_mask_encode (int *,int,int,int) ;

__attribute__((used)) static void its_encode_itt(struct its_cmd_block *cmd, u64 itt_addr)
{
 its_mask_encode(&cmd->raw_cmd[2], itt_addr >> 8, 51, 8);
}
