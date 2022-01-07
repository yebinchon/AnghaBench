
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int* rep; int snd; int sndbit; int led; int ledbit; int mscbit; int relbit; int absbit; int sw; int swbit; int key; int keybit; } ;


 int ABS_MAX ;
 int INPUT_FLUSH ;
 int INPUT_IGNORE_EVENT ;
 int INPUT_PASS_TO_ALL ;
 int INPUT_PASS_TO_HANDLERS ;
 int KEY_MAX ;
 int LED_MAX ;
 int MSC_MAX ;
 int REL_MAX ;
 unsigned int REP_MAX ;
 int SND_MAX ;
 int SW_MAX ;



 int __change_bit (unsigned int,int ) ;
 int input_handle_abs_event (struct input_dev*,unsigned int,int*) ;
 int is_event_supported (unsigned int,int ,int ) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static int input_get_disposition(struct input_dev *dev,
     unsigned int type, unsigned int code, int *pval)
{
 int disposition = INPUT_IGNORE_EVENT;
 int value = *pval;

 switch (type) {

 case 131:
  switch (code) {
  case 130:
   disposition = INPUT_PASS_TO_ALL;
   break;

  case 128:
   disposition = INPUT_PASS_TO_HANDLERS | INPUT_FLUSH;
   break;
  case 129:
   disposition = INPUT_PASS_TO_HANDLERS;
   break;
  }
  break;

 case 139:
  if (is_event_supported(code, dev->keybit, KEY_MAX)) {


   if (value == 2) {
    disposition = INPUT_PASS_TO_HANDLERS;
    break;
   }

   if (!!test_bit(code, dev->key) != !!value) {

    __change_bit(code, dev->key);
    disposition = INPUT_PASS_TO_HANDLERS;
   }
  }
  break;

 case 132:
  if (is_event_supported(code, dev->swbit, SW_MAX) &&
      !!test_bit(code, dev->sw) != !!value) {

   __change_bit(code, dev->sw);
   disposition = INPUT_PASS_TO_HANDLERS;
  }
  break;

 case 141:
  if (is_event_supported(code, dev->absbit, ABS_MAX))
   disposition = input_handle_abs_event(dev, code, &value);

  break;

 case 135:
  if (is_event_supported(code, dev->relbit, REL_MAX) && value)
   disposition = INPUT_PASS_TO_HANDLERS;

  break;

 case 137:
  if (is_event_supported(code, dev->mscbit, MSC_MAX))
   disposition = INPUT_PASS_TO_ALL;

  break;

 case 138:
  if (is_event_supported(code, dev->ledbit, LED_MAX) &&
      !!test_bit(code, dev->led) != !!value) {

   __change_bit(code, dev->led);
   disposition = INPUT_PASS_TO_ALL;
  }
  break;

 case 133:
  if (is_event_supported(code, dev->sndbit, SND_MAX)) {

   if (!!test_bit(code, dev->snd) != !!value)
    __change_bit(code, dev->snd);
   disposition = INPUT_PASS_TO_ALL;
  }
  break;

 case 134:
  if (code <= REP_MAX && value >= 0 && dev->rep[code] != value) {
   dev->rep[code] = value;
   disposition = INPUT_PASS_TO_ALL;
  }
  break;

 case 140:
  if (value >= 0)
   disposition = INPUT_PASS_TO_ALL;
  break;

 case 136:
  disposition = INPUT_PASS_TO_ALL;
  break;
 }

 *pval = value;
 return disposition;
}
