
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pcmidi_sustain {scalar_t__ in_use; int velocity; int note; int status; int pm; } ;


 struct pcmidi_sustain* from_timer (int ,struct timer_list*,int ) ;
 int pcmidi_send_note (int ,int ,int ,int ) ;
 struct pcmidi_sustain* pms ;
 int timer ;

__attribute__((used)) static void pcmidi_sustained_note_release(struct timer_list *t)
{
 struct pcmidi_sustain *pms = from_timer(pms, t, timer);

 pcmidi_send_note(pms->pm, pms->status, pms->note, pms->velocity);
 pms->in_use = 0;
}
