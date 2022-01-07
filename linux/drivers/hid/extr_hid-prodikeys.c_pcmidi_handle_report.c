
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcmidi_snd {int dummy; } ;


 int pcmidi_handle_report1 (struct pcmidi_snd*,int *) ;
 int pcmidi_handle_report3 (struct pcmidi_snd*,int *,int) ;
 int pcmidi_handle_report4 (struct pcmidi_snd*,int *) ;

__attribute__((used)) static int pcmidi_handle_report(
 struct pcmidi_snd *pm, unsigned report_id, u8 *data, int size)
{
 int ret = 0;

 switch (report_id) {
 case 0x01:
  ret = pcmidi_handle_report1(pm, data);
  break;
 case 0x03:
  ret = pcmidi_handle_report3(pm, data, size);
  break;
 case 0x04:
  ret = pcmidi_handle_report4(pm, data);
  break;
 }
 return ret;
}
