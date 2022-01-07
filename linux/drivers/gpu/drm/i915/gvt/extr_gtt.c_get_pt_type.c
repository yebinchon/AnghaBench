
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pt_type; } ;


 TYPE_1__* gtt_type_table ;

__attribute__((used)) static inline int get_pt_type(int type)
{
 return gtt_type_table[type].pt_type;
}
