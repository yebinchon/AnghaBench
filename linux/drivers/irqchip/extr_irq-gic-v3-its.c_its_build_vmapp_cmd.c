
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct its_vpe {int dummy; } ;
struct its_node {scalar_t__ vlpi_redist_offset; } ;
struct TYPE_5__ {TYPE_3__* vpe; int valid; TYPE_1__* col; } ;
struct its_cmd_desc {TYPE_2__ its_vmapp_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_6__ {int vpe_id; int vpt_page; } ;
struct TYPE_4__ {scalar_t__ target_address; } ;


 int GITS_CMD_VMAPP ;
 scalar_t__ LPI_NRBITS ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_target (struct its_cmd_block*,scalar_t__) ;
 int its_encode_valid (struct its_cmd_block*,int ) ;
 int its_encode_vpeid (struct its_cmd_block*,int ) ;
 int its_encode_vpt_addr (struct its_cmd_block*,unsigned long) ;
 int its_encode_vpt_size (struct its_cmd_block*,scalar_t__) ;
 int its_fixup_cmd (struct its_cmd_block*) ;
 int page_address (int ) ;
 struct its_vpe* valid_vpe (struct its_node*,TYPE_3__*) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static struct its_vpe *its_build_vmapp_cmd(struct its_node *its,
        struct its_cmd_block *cmd,
        struct its_cmd_desc *desc)
{
 unsigned long vpt_addr;
 u64 target;

 vpt_addr = virt_to_phys(page_address(desc->its_vmapp_cmd.vpe->vpt_page));
 target = desc->its_vmapp_cmd.col->target_address + its->vlpi_redist_offset;

 its_encode_cmd(cmd, GITS_CMD_VMAPP);
 its_encode_vpeid(cmd, desc->its_vmapp_cmd.vpe->vpe_id);
 its_encode_valid(cmd, desc->its_vmapp_cmd.valid);
 its_encode_target(cmd, target);
 its_encode_vpt_addr(cmd, vpt_addr);
 its_encode_vpt_size(cmd, LPI_NRBITS - 1);

 its_fixup_cmd(cmd);

 return valid_vpe(its, desc->its_vmapp_cmd.vpe);
}
