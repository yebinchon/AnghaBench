
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flexcop_device {scalar_t__ rev; int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;} ;
typedef scalar_t__ flexcop_sram_dest_target_t ;
typedef int flexcop_sram_dest_t ;
struct TYPE_5__ {scalar_t__ MEDIA_Dest; scalar_t__ CAO_Dest; scalar_t__ CAI_Dest; scalar_t__ NET_Dest; } ;
struct TYPE_6__ {TYPE_1__ sram_dest_reg_714; } ;
typedef TYPE_2__ flexcop_ibi_value ;


 int EINVAL ;
 int FC_SRAM_DEST_CAI ;
 int FC_SRAM_DEST_CAO ;
 int FC_SRAM_DEST_MEDIA ;
 int FC_SRAM_DEST_NET ;
 scalar_t__ FC_SRAM_DEST_TARGET_FC3_CA ;
 scalar_t__ FLEXCOP_III ;
 int deb_sram (char*,int,scalar_t__) ;
 int err (char*) ;
 int sram_dest_reg_714 ;
 TYPE_2__ stub1 (struct flexcop_device*,int ) ;
 int stub2 (struct flexcop_device*,int ,TYPE_2__) ;
 int udelay (int) ;

int flexcop_sram_set_dest(struct flexcop_device *fc, flexcop_sram_dest_t dest,
   flexcop_sram_dest_target_t target)
{
 flexcop_ibi_value v;
 v = fc->read_ibi_reg(fc, sram_dest_reg_714);

 if (fc->rev != FLEXCOP_III && target == FC_SRAM_DEST_TARGET_FC3_CA) {
  err("SRAM destination target to available on FlexCopII(b)\n");
  return -EINVAL;
 }
 deb_sram("sram dest: %x target: %x\n", dest, target);

 if (dest & FC_SRAM_DEST_NET)
  v.sram_dest_reg_714.NET_Dest = target;
 if (dest & FC_SRAM_DEST_CAI)
  v.sram_dest_reg_714.CAI_Dest = target;
 if (dest & FC_SRAM_DEST_CAO)
  v.sram_dest_reg_714.CAO_Dest = target;
 if (dest & FC_SRAM_DEST_MEDIA)
  v.sram_dest_reg_714.MEDIA_Dest = target;

 fc->write_ibi_reg(fc,sram_dest_reg_714,v);
 udelay(1000);

 return 0;
}
