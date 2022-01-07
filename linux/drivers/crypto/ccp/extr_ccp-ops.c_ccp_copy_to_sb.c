
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_dm_workarea {int dummy; } ;
struct ccp_cmd_queue {int dummy; } ;


 int ccp_copy_to_from_sb (struct ccp_cmd_queue*,struct ccp_dm_workarea*,int ,int ,int ,int) ;

__attribute__((used)) static int ccp_copy_to_sb(struct ccp_cmd_queue *cmd_q,
     struct ccp_dm_workarea *wa, u32 jobid, u32 sb,
     u32 byte_swap)
{
 return ccp_copy_to_from_sb(cmd_q, wa, jobid, sb, byte_swap, 0);
}
