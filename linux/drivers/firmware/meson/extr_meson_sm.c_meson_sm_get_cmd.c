
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct meson_sm_cmd {unsigned int index; scalar_t__ smc_id; } ;
struct meson_sm_chip {struct meson_sm_cmd* cmd; } ;



__attribute__((used)) static u32 meson_sm_get_cmd(const struct meson_sm_chip *chip,
       unsigned int cmd_index)
{
 const struct meson_sm_cmd *cmd = chip->cmd;

 while (cmd->smc_id && cmd->index != cmd_index)
  cmd++;

 return cmd->smc_id;
}
