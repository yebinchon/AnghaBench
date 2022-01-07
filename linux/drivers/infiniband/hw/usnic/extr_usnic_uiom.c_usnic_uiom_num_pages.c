
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_reg {scalar_t__ offset; scalar_t__ length; } ;


 size_t PAGE_ALIGN (scalar_t__) ;
 size_t PAGE_SHIFT ;

__attribute__((used)) static inline size_t usnic_uiom_num_pages(struct usnic_uiom_reg *uiomr)
{
 return PAGE_ALIGN(uiomr->length + uiomr->offset) >> PAGE_SHIFT;
}
