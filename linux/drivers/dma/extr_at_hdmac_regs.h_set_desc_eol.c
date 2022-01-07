
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrlb; scalar_t__ dscr; } ;
struct at_desc {TYPE_1__ lli; } ;


 int ATC_DST_DSCR_DIS ;
 int ATC_IEN ;
 int ATC_SRC_DSCR_DIS ;

__attribute__((used)) static void set_desc_eol(struct at_desc *desc)
{
 u32 ctrlb = desc->lli.ctrlb;

 ctrlb &= ~ATC_IEN;
 ctrlb |= ATC_SRC_DSCR_DIS | ATC_DST_DSCR_DIS;

 desc->lli.ctrlb = ctrlb;
 desc->lli.dscr = 0;
}
