
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct pcmidi_snd {struct snd_rawmidi_substream* in_substream; } ;
struct TYPE_2__ {struct pcmidi_snd* private_data; } ;


 int dbg_hid (char*) ;

__attribute__((used)) static int pcmidi_in_open(struct snd_rawmidi_substream *substream)
{
 struct pcmidi_snd *pm = substream->rmidi->private_data;

 dbg_hid("pcmidi in open\n");
 pm->in_substream = substream;
 return 0;
}
