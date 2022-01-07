
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int dma_free_pagelist (struct page*) ;

__attribute__((used)) static void iova_entry_free(unsigned long data)
{
 struct page *freelist = (struct page *)data;

 dma_free_pagelist(freelist);
}
