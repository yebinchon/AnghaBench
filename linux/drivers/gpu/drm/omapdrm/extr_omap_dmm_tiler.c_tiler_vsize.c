
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_2__ {size_t cpp; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 TYPE_1__* geom ;
 size_t round_up (size_t,int ) ;
 int validfmt (int) ;

size_t tiler_vsize(enum tiler_fmt fmt, u16 w, u16 h)
{
 BUG_ON(!validfmt(fmt));
 return round_up(geom[fmt].cpp * w, PAGE_SIZE) * h;
}
