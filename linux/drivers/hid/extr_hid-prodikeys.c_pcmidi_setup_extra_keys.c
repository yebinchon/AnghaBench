
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmidi_snd {int ifnum; struct input_dev* input_ep82; scalar_t__* last_key; } ;
struct input_dev {int keybit; } ;
 int set_bit (unsigned int const,int ) ;

__attribute__((used)) static void pcmidi_setup_extra_keys(
 struct pcmidi_snd *pm, struct input_dev *input)
{




 static const unsigned int keys[] = {
  142,
  139, 146,
  147, 143,
  128,
  130,
  144,
  140, 132,
  134, 141,
  138, 137,
  145, 133,
  129, 135,
  131, 136,
  0
 };

 const unsigned int *pkeys = &keys[0];
 unsigned short i;

 if (pm->ifnum != 1)
  return;

 pm->input_ep82 = input;

 for (i = 0; i < 24; i++)
  pm->last_key[i] = 0;

 while (*pkeys != 0) {
  set_bit(*pkeys, pm->input_ep82->keybit);
  ++pkeys;
 }
}
