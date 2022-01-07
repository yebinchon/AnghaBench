
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_reg {int owning_mm; } ;


 int kfree (struct usnic_uiom_reg*) ;
 int mmdrop (int ) ;

__attribute__((used)) static void __usnic_uiom_release_tail(struct usnic_uiom_reg *uiomr)
{
 mmdrop(uiomr->owning_mm);
 kfree(uiomr);
}
