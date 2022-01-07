
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmidi_snd {int rawmidi_in_lock; TYPE_1__* in_substream; int in_triggered; } ;
struct TYPE_2__ {int number; } ;


 int snd_rawmidi_receive (TYPE_1__*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void pcmidi_send_note(struct pcmidi_snd *pm,
 unsigned char status, unsigned char note, unsigned char velocity)
{
 unsigned long flags;
 unsigned char buffer[3];

 buffer[0] = status;
 buffer[1] = note;
 buffer[2] = velocity;

 spin_lock_irqsave(&pm->rawmidi_in_lock, flags);

 if (!pm->in_substream)
  goto drop_note;
 if (!test_bit(pm->in_substream->number, &pm->in_triggered))
  goto drop_note;

 snd_rawmidi_receive(pm->in_substream, buffer, 3);

drop_note:
 spin_unlock_irqrestore(&pm->rawmidi_in_lock, flags);

 return;
}
