
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_2__ {size_t cpp; } ;


 TYPE_1__* geom ;
 int tiler_align (int,size_t*,size_t*) ;

size_t tiler_size(enum tiler_fmt fmt, u16 w, u16 h)
{
 tiler_align(fmt, &w, &h);
 return geom[fmt].cpp * w * h;
}
