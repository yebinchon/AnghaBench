
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_logical_unit {scalar_t__ command_block_agent_address; int generation; TYPE_1__* tgt; } ;
struct fw_transaction {int dummy; } ;
struct fw_device {int max_speed; int card; } ;
typedef int __be32 ;
struct TYPE_2__ {int node_id; } ;


 int GFP_ATOMIC ;
 scalar_t__ SBP2_AGENT_RESET ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int complete_agent_reset_write_no_wait ;
 int fw_send_request (int ,struct fw_transaction*,int ,int ,int ,int ,scalar_t__,int *,int,int ,struct fw_transaction*) ;
 struct fw_transaction* kmalloc (int,int ) ;
 struct fw_device* target_parent_device (TYPE_1__*) ;

__attribute__((used)) static void sbp2_agent_reset_no_wait(struct sbp2_logical_unit *lu)
{
 struct fw_device *device = target_parent_device(lu->tgt);
 struct fw_transaction *t;
 static __be32 d;

 t = kmalloc(sizeof(*t), GFP_ATOMIC);
 if (t == ((void*)0))
  return;

 fw_send_request(device->card, t, TCODE_WRITE_QUADLET_REQUEST,
   lu->tgt->node_id, lu->generation, device->max_speed,
   lu->command_block_agent_address + SBP2_AGENT_RESET,
   &d, 4, complete_agent_reset_write_no_wait, t);
}
