
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_3__ {int event_id; TYPE_2__* dev; } ;
struct its_cmd_desc {TYPE_1__ its_inv_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int device_id; } ;


 int GITS_CMD_INV ;
 struct its_collection* dev_event_to_col (TYPE_2__*,int ) ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_devid (struct its_cmd_block*,int ) ;
 int its_encode_event_id (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;
 struct its_collection* valid_col (struct its_collection*) ;

__attribute__((used)) static struct its_collection *its_build_inv_cmd(struct its_node *its,
      struct its_cmd_block *cmd,
      struct its_cmd_desc *desc)
{
 struct its_collection *col;

 col = dev_event_to_col(desc->its_inv_cmd.dev,
          desc->its_inv_cmd.event_id);

 its_encode_cmd(cmd, GITS_CMD_INV);
 its_encode_devid(cmd, desc->its_inv_cmd.dev->device_id);
 its_encode_event_id(cmd, desc->its_inv_cmd.event_id);

 its_fixup_cmd(cmd);

 return valid_col(col);
}
