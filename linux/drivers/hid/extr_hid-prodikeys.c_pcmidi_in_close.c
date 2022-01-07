
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;


 int dbg_hid (char*) ;

__attribute__((used)) static int pcmidi_in_close(struct snd_rawmidi_substream *substream)
{
 dbg_hid("pcmidi in close\n");
 return 0;
}
