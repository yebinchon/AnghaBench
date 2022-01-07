
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tcs_cmd {int wait; int data; int addr; } ;


 int BCM_TCS_CMD (int,int,int ,int ) ;
 int BCM_TCS_CMD_VOTE_MASK ;

inline void tcs_cmd_gen(struct tcs_cmd *cmd, u64 vote_x, u64 vote_y,
   u32 addr, bool commit)
{
 bool valid = 1;

 if (!cmd)
  return;

 if (vote_x == 0 && vote_y == 0)
  valid = 0;

 if (vote_x > BCM_TCS_CMD_VOTE_MASK)
  vote_x = BCM_TCS_CMD_VOTE_MASK;

 if (vote_y > BCM_TCS_CMD_VOTE_MASK)
  vote_y = BCM_TCS_CMD_VOTE_MASK;

 cmd->addr = addr;
 cmd->data = BCM_TCS_CMD(commit, valid, vote_x, vote_y);





 if (commit)
  cmd->wait = 1;
}
