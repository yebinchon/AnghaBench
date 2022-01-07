
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sbp2_target {unsigned int workarounds; } ;
struct TYPE_3__ {int firmware_revision; int model; unsigned int workarounds; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ SBP2_ROM_VALUE_WILDCARD ;
 unsigned int SBP2_WORKAROUND_OVERRIDE ;
 int dev_notice (int ,char*,...) ;
 unsigned int sbp2_param_workarounds ;
 TYPE_1__* sbp2_workarounds_table ;
 int tgt_dev (struct sbp2_target*) ;

__attribute__((used)) static void sbp2_init_workarounds(struct sbp2_target *tgt, u32 model,
      u32 firmware_revision)
{
 int i;
 unsigned int w = sbp2_param_workarounds;

 if (w)
  dev_notice(tgt_dev(tgt),
      "Please notify linux1394-devel@lists.sf.net "
      "if you need the workarounds parameter\n");

 if (w & SBP2_WORKAROUND_OVERRIDE)
  goto out;

 for (i = 0; i < ARRAY_SIZE(sbp2_workarounds_table); i++) {

  if (sbp2_workarounds_table[i].firmware_revision !=
      (firmware_revision & 0xffffff00))
   continue;

  if (sbp2_workarounds_table[i].model != model &&
      sbp2_workarounds_table[i].model != SBP2_ROM_VALUE_WILDCARD)
   continue;

  w |= sbp2_workarounds_table[i].workarounds;
  break;
 }
 out:
 if (w)
  dev_notice(tgt_dev(tgt), "workarounds 0x%x "
      "(firmware_revision 0x%06x, model_id 0x%06x)\n",
      w, firmware_revision, model);
 tgt->workarounds = w;
}
