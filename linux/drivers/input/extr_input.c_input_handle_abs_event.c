
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_mt {int num_slots; int slot; TYPE_1__* slots; } ;
struct input_dev {TYPE_2__* absinfo; struct input_mt* mt; } ;
struct TYPE_4__ {int value; int fuzz; } ;
struct TYPE_3__ {int* abs; } ;


 unsigned int ABS_MT_FIRST ;
 unsigned int ABS_MT_SLOT ;
 int INPUT_IGNORE_EVENT ;
 int INPUT_PASS_TO_HANDLERS ;
 int INPUT_SLOT ;
 size_t input_abs_get_val (struct input_dev*,unsigned int) ;
 int input_abs_set_val (struct input_dev*,unsigned int,size_t) ;
 int input_defuzz_abs_event (int,int,int ) ;
 int input_is_mt_value (unsigned int) ;

__attribute__((used)) static int input_handle_abs_event(struct input_dev *dev,
      unsigned int code, int *pval)
{
 struct input_mt *mt = dev->mt;
 bool is_mt_event;
 int *pold;

 if (code == ABS_MT_SLOT) {




  if (mt && *pval >= 0 && *pval < mt->num_slots)
   mt->slot = *pval;

  return INPUT_IGNORE_EVENT;
 }

 is_mt_event = input_is_mt_value(code);

 if (!is_mt_event) {
  pold = &dev->absinfo[code].value;
 } else if (mt) {
  pold = &mt->slots[mt->slot].abs[code - ABS_MT_FIRST];
 } else {




  pold = ((void*)0);
 }

 if (pold) {
  *pval = input_defuzz_abs_event(*pval, *pold,
      dev->absinfo[code].fuzz);
  if (*pold == *pval)
   return INPUT_IGNORE_EVENT;

  *pold = *pval;
 }


 if (is_mt_event && mt && mt->slot != input_abs_get_val(dev, ABS_MT_SLOT)) {
  input_abs_set_val(dev, ABS_MT_SLOT, mt->slot);
  return INPUT_PASS_TO_HANDLERS | INPUT_SLOT;
 }

 return INPUT_PASS_TO_HANDLERS;
}
