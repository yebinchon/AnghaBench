
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_mixer {int dummy; } ;


 int GAM_CTL_BACK_MASK ;
 int GAM_MIXER_CTL ;
 int sti_mixer_reg_read (struct sti_mixer*,int ) ;
 int sti_mixer_reg_write (struct sti_mixer*,int ,int) ;

void sti_mixer_set_background_status(struct sti_mixer *mixer, bool enable)
{
 u32 val = sti_mixer_reg_read(mixer, GAM_MIXER_CTL);

 val &= ~GAM_CTL_BACK_MASK;
 val |= enable;
 sti_mixer_reg_write(mixer, GAM_MIXER_CTL, val);
}
