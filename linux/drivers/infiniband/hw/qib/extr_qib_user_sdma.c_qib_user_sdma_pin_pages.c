
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct qib_devdata {int dummy; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int FOLL_LONGTERM ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int get_user_pages_fast (unsigned long,int,int ,struct page**) ;
 int put_user_page (struct page*) ;
 int qib_user_sdma_page_to_frags (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct page*,int,unsigned long,int,int *) ;

__attribute__((used)) static int qib_user_sdma_pin_pages(const struct qib_devdata *dd,
       struct qib_user_sdma_queue *pq,
       struct qib_user_sdma_pkt *pkt,
       unsigned long addr, int tlen, int npages)
{
 struct page *pages[8];
 int i, j;
 int ret = 0;

 while (npages) {
  if (npages > 8)
   j = 8;
  else
   j = npages;

  ret = get_user_pages_fast(addr, j, FOLL_LONGTERM, pages);
  if (ret != j) {
   i = 0;
   j = ret;
   ret = -ENOMEM;
   goto free_pages;
  }

  for (i = 0; i < j; i++) {

   unsigned long fofs = addr & ~PAGE_MASK;
   int flen = ((fofs + tlen) > PAGE_SIZE) ?
    (PAGE_SIZE - fofs) : tlen;

   ret = qib_user_sdma_page_to_frags(dd, pq, pkt,
    pages[i], 1, fofs, flen, ((void*)0));
   if (ret < 0) {



    i++;
    goto free_pages;
   }

   addr += flen;
   tlen -= flen;
  }

  npages -= j;
 }

 goto done;


free_pages:
 while (i < j)
  put_user_page(pages[i++]);

done:
 return ret;
}
