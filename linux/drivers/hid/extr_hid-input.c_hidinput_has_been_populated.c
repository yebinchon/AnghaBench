
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_input {TYPE_1__* input; } ;
struct TYPE_2__ {unsigned long* evbit; unsigned long* keybit; unsigned long* relbit; unsigned long* absbit; unsigned long* mscbit; unsigned long* ledbit; unsigned long* sndbit; unsigned long* ffbit; unsigned long* swbit; } ;


 int ABS_CNT ;
 int BITS_TO_LONGS (int ) ;
 int EV_CNT ;
 int FF_CNT ;
 int KEY_CNT ;
 int LED_CNT ;
 int MSC_CNT ;
 int REL_CNT ;
 int SND_CNT ;
 int SW_CNT ;

__attribute__((used)) static bool hidinput_has_been_populated(struct hid_input *hidinput)
{
 int i;
 unsigned long r = 0;

 for (i = 0; i < BITS_TO_LONGS(EV_CNT); i++)
  r |= hidinput->input->evbit[i];

 for (i = 0; i < BITS_TO_LONGS(KEY_CNT); i++)
  r |= hidinput->input->keybit[i];

 for (i = 0; i < BITS_TO_LONGS(REL_CNT); i++)
  r |= hidinput->input->relbit[i];

 for (i = 0; i < BITS_TO_LONGS(ABS_CNT); i++)
  r |= hidinput->input->absbit[i];

 for (i = 0; i < BITS_TO_LONGS(MSC_CNT); i++)
  r |= hidinput->input->mscbit[i];

 for (i = 0; i < BITS_TO_LONGS(LED_CNT); i++)
  r |= hidinput->input->ledbit[i];

 for (i = 0; i < BITS_TO_LONGS(SND_CNT); i++)
  r |= hidinput->input->sndbit[i];

 for (i = 0; i < BITS_TO_LONGS(FF_CNT); i++)
  r |= hidinput->input->ffbit[i];

 for (i = 0; i < BITS_TO_LONGS(SW_CNT); i++)
  r |= hidinput->input->swbit[i];

 return !!r;
}
