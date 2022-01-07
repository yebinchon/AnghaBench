
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct pcmidi_snd {int in_triggered; } ;
struct TYPE_2__ {struct pcmidi_snd* private_data; } ;


 int dbg_hid (char*,int) ;

__attribute__((used)) static void pcmidi_in_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct pcmidi_snd *pm = substream->rmidi->private_data;

 dbg_hid("pcmidi in trigger %d\n", up);

 pm->in_triggered = up;
}
