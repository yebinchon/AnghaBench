
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b_cr_slice_channel_hash {int sym_slice0_channel_enabled; int sym_slice1_channel_enabled; scalar_t__ enable_pmi_dual_data_mode; scalar_t__ ch_1_disabled; int slice_1_disabled; int slice_0_mem_disabled; } ;



__attribute__((used)) static int gen_sym_mask(struct b_cr_slice_channel_hash *p)
{
 int mask = 0;

 if (!p->slice_0_mem_disabled)
  mask |= p->sym_slice0_channel_enabled;

 if (!p->slice_1_disabled)
  mask |= p->sym_slice1_channel_enabled << 2;

 if (p->ch_1_disabled || p->enable_pmi_dual_data_mode)
  mask &= 0x5;

 return mask;
}
