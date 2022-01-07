
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ALIGN (int,int) ;

__attribute__((used)) static int get_octo_len(u64 addr, u64 len, int page_shift)
{
 u64 page_size = 1ULL << page_shift;
 u64 offset;
 int npages;

 offset = addr & (page_size - 1);
 npages = ALIGN(len + offset, page_size) >> page_shift;
 return (npages + 1) / 2;
}
