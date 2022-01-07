
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_2__ {int slot_h; int slot_w; } ;


 int BUG_ON (int) ;
 TYPE_1__* geom ;
 int round_up (int ,int ) ;
 int validfmt (int) ;

void tiler_align(enum tiler_fmt fmt, u16 *w, u16 *h)
{
 BUG_ON(!validfmt(fmt));
 *w = round_up(*w, geom[fmt].slot_w);
 *h = round_up(*h, geom[fmt].slot_h);
}
