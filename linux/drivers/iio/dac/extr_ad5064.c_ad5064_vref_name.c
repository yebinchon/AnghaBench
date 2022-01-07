
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5064_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {scalar_t__ shared_vref; } ;


 char const* const* ad5064_vref_names ;

__attribute__((used)) static const char * const ad5064_vref_name(struct ad5064_state *st,
 unsigned int vref)
{
 return st->chip_info->shared_vref ? "vref" : ad5064_vref_names[vref];
}
