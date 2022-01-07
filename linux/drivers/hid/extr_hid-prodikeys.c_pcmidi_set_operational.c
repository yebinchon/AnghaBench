
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmidi_snd {int ifnum; } ;


 int pcmidi_get_output_report (struct pcmidi_snd*) ;
 int pcmidi_submit_output_report (struct pcmidi_snd*,int) ;

__attribute__((used)) static int pcmidi_set_operational(struct pcmidi_snd *pm)
{
 int rc;

 if (pm->ifnum != 1)
  return 0;

 rc = pcmidi_get_output_report(pm);
 if (rc < 0)
  return rc;
 pcmidi_submit_output_report(pm, 0xc1);
 return 0;
}
