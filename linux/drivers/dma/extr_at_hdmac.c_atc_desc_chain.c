
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys; } ;
struct TYPE_3__ {int dscr; } ;
struct at_desc {int tx_list; int desc_node; TYPE_2__ txd; TYPE_1__ lli; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void atc_desc_chain(struct at_desc **first, struct at_desc **prev,
      struct at_desc *desc)
{
 if (!(*first)) {
  *first = desc;
 } else {

  (*prev)->lli.dscr = desc->txd.phys;

  list_add_tail(&desc->desc_node,
    &(*first)->tx_list);
 }
 *prev = desc;
}
