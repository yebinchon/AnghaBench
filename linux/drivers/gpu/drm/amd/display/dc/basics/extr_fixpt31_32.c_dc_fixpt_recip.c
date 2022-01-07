
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fixed31_32 {int value; } ;
struct TYPE_2__ {int value; } ;


 int ASSERT (int ) ;
 struct fixed31_32 dc_fixpt_from_fraction (int ,int ) ;
 TYPE_1__ dc_fixpt_one ;

struct fixed31_32 dc_fixpt_recip(struct fixed31_32 arg)
{





 ASSERT(arg.value);

 return dc_fixpt_from_fraction(
  dc_fixpt_one.value,
  arg.value);
}
