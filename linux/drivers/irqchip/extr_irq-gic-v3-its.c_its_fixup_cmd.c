
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_cmd_block {void** raw_cmd; } ;


 void* cpu_to_le64 (void*) ;

__attribute__((used)) static inline void its_fixup_cmd(struct its_cmd_block *cmd)
{

 cmd->raw_cmd[0] = cpu_to_le64(cmd->raw_cmd[0]);
 cmd->raw_cmd[1] = cpu_to_le64(cmd->raw_cmd[1]);
 cmd->raw_cmd[2] = cpu_to_le64(cmd->raw_cmd[2]);
 cmd->raw_cmd[3] = cpu_to_le64(cmd->raw_cmd[3]);
}
