
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hda {scalar_t__ video_dacs_ctrl; } ;


 int DAC_CFG_HD_HZUVW_OFF_MASK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hda_enable_hd_dacs(struct sti_hda *hda, bool enable)
{
 if (hda->video_dacs_ctrl) {
  u32 val;

  val = readl(hda->video_dacs_ctrl);
  if (enable)
   val &= ~DAC_CFG_HD_HZUVW_OFF_MASK;
  else
   val |= DAC_CFG_HD_HZUVW_OFF_MASK;

  writel(val, hda->video_dacs_ctrl);
 }
}
