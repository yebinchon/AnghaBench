
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmidi_sustain {int in_use; int timer; } ;
struct pcmidi_snd {struct pcmidi_sustain* sustained_notes; } ;


 unsigned int PCMIDI_SUSTAINED_MAX ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void stop_sustain_timers(struct pcmidi_snd *pm)
{
 struct pcmidi_sustain *pms;
 unsigned i;

 for (i = 0; i < PCMIDI_SUSTAINED_MAX; i++) {
  pms = &pm->sustained_notes[i];
  pms->in_use = 1;
  del_timer_sync(&pms->timer);
 }
}
