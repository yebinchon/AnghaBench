
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmidi_sustain {int timer; struct pcmidi_snd* pm; scalar_t__ in_use; } ;
struct pcmidi_snd {struct pcmidi_sustain* sustained_notes; } ;


 unsigned int PCMIDI_SUSTAINED_MAX ;
 int pcmidi_sustained_note_release ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void init_sustain_timers(struct pcmidi_snd *pm)
{
 struct pcmidi_sustain *pms;
 unsigned i;

 for (i = 0; i < PCMIDI_SUSTAINED_MAX; i++) {
  pms = &pm->sustained_notes[i];
  pms->in_use = 0;
  pms->pm = pm;
  timer_setup(&pms->timer, pcmidi_sustained_note_release, 0);
 }
}
