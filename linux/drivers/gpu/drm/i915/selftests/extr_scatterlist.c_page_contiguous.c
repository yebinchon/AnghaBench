
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;



__attribute__((used)) static inline bool page_contiguous(struct page *first,
       struct page *last,
       unsigned long npages)
{
 return first + npages == last;
}
