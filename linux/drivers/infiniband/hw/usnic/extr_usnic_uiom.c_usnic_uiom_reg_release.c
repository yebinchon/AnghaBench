
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_uiom_reg {TYPE_1__* owning_mm; int pd; } ;
struct TYPE_2__ {int pinned_vm; } ;


 int __usnic_uiom_reg_release (int ,struct usnic_uiom_reg*,int) ;
 int __usnic_uiom_release_tail (struct usnic_uiom_reg*) ;
 int atomic64_sub (int ,int *) ;
 int usnic_uiom_num_pages (struct usnic_uiom_reg*) ;

void usnic_uiom_reg_release(struct usnic_uiom_reg *uiomr)
{
 __usnic_uiom_reg_release(uiomr->pd, uiomr, 1);

 atomic64_sub(usnic_uiom_num_pages(uiomr), &uiomr->owning_mm->pinned_vm);
 __usnic_uiom_release_tail(uiomr);
}
