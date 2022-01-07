
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pidff_usage {void** value; TYPE_1__* field; } ;
typedef int s16 ;
struct TYPE_3__ {scalar_t__ logical_minimum; } ;


 void* pidff_rescale (int ,int,TYPE_1__*) ;
 void* pidff_rescale_signed (int ,TYPE_1__*) ;
 int pr_debug (char*,int ,void*) ;

__attribute__((used)) static void pidff_set_signed(struct pidff_usage *usage, s16 value)
{
 if (usage->field->logical_minimum < 0)
  usage->value[0] = pidff_rescale_signed(value, usage->field);
 else {
  if (value < 0)
   usage->value[0] =
       pidff_rescale(-value, 0x8000, usage->field);
  else
   usage->value[0] =
       pidff_rescale(value, 0x7fff, usage->field);
 }
 pr_debug("calculated from %d to %d\n", value, usage->value[0]);
}
