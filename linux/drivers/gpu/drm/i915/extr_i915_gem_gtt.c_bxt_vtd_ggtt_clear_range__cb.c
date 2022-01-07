
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clear_range {int vm; int length; int start; } ;


 int bxt_vtd_ggtt_wa (int ) ;
 int gen8_ggtt_clear_range (int ,int ,int ) ;

__attribute__((used)) static int bxt_vtd_ggtt_clear_range__cb(void *_arg)
{
 struct clear_range *arg = _arg;

 gen8_ggtt_clear_range(arg->vm, arg->start, arg->length);
 bxt_vtd_ggtt_wa(arg->vm);

 return 0;
}
