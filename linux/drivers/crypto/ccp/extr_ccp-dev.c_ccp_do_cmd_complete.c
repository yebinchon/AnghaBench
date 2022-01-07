
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_tasklet_data {int completion; struct ccp_cmd* cmd; } ;
struct ccp_cmd {int ret; int data; int (* callback ) (int ,int ) ;} ;


 int complete (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void ccp_do_cmd_complete(unsigned long data)
{
 struct ccp_tasklet_data *tdata = (struct ccp_tasklet_data *)data;
 struct ccp_cmd *cmd = tdata->cmd;

 cmd->callback(cmd->data, cmd->ret);

 complete(&tdata->completion);
}
