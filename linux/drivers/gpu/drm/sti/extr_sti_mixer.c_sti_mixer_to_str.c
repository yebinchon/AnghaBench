
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mixer {int id; } ;





const char *sti_mixer_to_str(struct sti_mixer *mixer)
{
 switch (mixer->id) {
 case 128:
  return "MAIN_MIXER";
 case 129:
  return "AUX_MIXER";
 default:
  return "<UNKNOWN MIXER>";
 }
}
