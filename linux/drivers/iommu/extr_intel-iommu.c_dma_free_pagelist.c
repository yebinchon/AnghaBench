
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* freelist; } ;


 int free_pgtable_page (int ) ;
 int page_address (struct page*) ;

__attribute__((used)) static void dma_free_pagelist(struct page *freelist)
{
 struct page *pg;

 while ((pg = freelist)) {
  freelist = pg->freelist;
  free_pgtable_page(page_address(pg));
 }
}
