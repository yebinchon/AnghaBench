
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mixer {int dummy; } ;


 int GAM_MIXER_BKC ;
 int sti_mixer_reg_write (struct sti_mixer*,int ,unsigned int) ;

__attribute__((used)) static void sti_mixer_set_background_color(struct sti_mixer *mixer,
        unsigned int rgb)
{
 sti_mixer_reg_write(mixer, GAM_MIXER_BKC, rgb);
}
