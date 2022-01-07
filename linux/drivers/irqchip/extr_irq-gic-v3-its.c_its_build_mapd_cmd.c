
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_3__ {int valid; TYPE_2__* dev; } ;
struct its_cmd_desc {TYPE_1__ its_mapd_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int device_id; int itt; int nr_ites; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int GITS_CMD_MAPD ;
 int ITS_ITT_ALIGN ;
 scalar_t__ ilog2 (int ) ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_devid (struct its_cmd_block*,int ) ;
 int its_encode_itt (struct its_cmd_block*,unsigned long) ;
 int its_encode_size (struct its_cmd_block*,scalar_t__) ;
 int its_encode_valid (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static struct its_collection *its_build_mapd_cmd(struct its_node *its,
       struct its_cmd_block *cmd,
       struct its_cmd_desc *desc)
{
 unsigned long itt_addr;
 u8 size = ilog2(desc->its_mapd_cmd.dev->nr_ites);

 itt_addr = virt_to_phys(desc->its_mapd_cmd.dev->itt);
 itt_addr = ALIGN(itt_addr, ITS_ITT_ALIGN);

 its_encode_cmd(cmd, GITS_CMD_MAPD);
 its_encode_devid(cmd, desc->its_mapd_cmd.dev->device_id);
 its_encode_size(cmd, size - 1);
 its_encode_itt(cmd, itt_addr);
 its_encode_valid(cmd, desc->its_mapd_cmd.valid);

 its_fixup_cmd(cmd);

 return ((void*)0);
}
