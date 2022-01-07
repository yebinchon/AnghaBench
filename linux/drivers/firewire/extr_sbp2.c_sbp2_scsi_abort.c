
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct sbp2_logical_unit {int dummy; } ;
struct TYPE_2__ {struct sbp2_logical_unit* hostdata; } ;


 int SUCCESS ;
 int dev_notice (int ,char*) ;
 int lu_dev (struct sbp2_logical_unit*) ;
 int sbp2_agent_reset (struct sbp2_logical_unit*) ;
 int sbp2_cancel_orbs (struct sbp2_logical_unit*) ;

__attribute__((used)) static int sbp2_scsi_abort(struct scsi_cmnd *cmd)
{
 struct sbp2_logical_unit *lu = cmd->device->hostdata;

 dev_notice(lu_dev(lu), "sbp2_scsi_abort\n");
 sbp2_agent_reset(lu);
 sbp2_cancel_orbs(lu);

 return SUCCESS;
}
