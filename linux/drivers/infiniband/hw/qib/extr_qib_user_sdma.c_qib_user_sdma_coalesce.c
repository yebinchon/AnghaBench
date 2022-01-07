
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct qib_devdata {int dummy; } ;
struct page {int dummy; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int copy_from_user (char*,int ,scalar_t__) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int qib_user_sdma_page_to_frags (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct page*,int ,int ,int,void*) ;

__attribute__((used)) static int qib_user_sdma_coalesce(const struct qib_devdata *dd,
      struct qib_user_sdma_queue *pq,
      struct qib_user_sdma_pkt *pkt,
      const struct iovec *iov,
      unsigned long niov)
{
 int ret = 0;
 struct page *page = alloc_page(GFP_KERNEL);
 void *mpage_save;
 char *mpage;
 int i;
 int len = 0;

 if (!page) {
  ret = -ENOMEM;
  goto done;
 }

 mpage = kmap(page);
 mpage_save = mpage;
 for (i = 0; i < niov; i++) {
  int cfur;

  cfur = copy_from_user(mpage,
          iov[i].iov_base, iov[i].iov_len);
  if (cfur) {
   ret = -EFAULT;
   goto free_unmap;
  }

  mpage += iov[i].iov_len;
  len += iov[i].iov_len;
 }

 ret = qib_user_sdma_page_to_frags(dd, pq, pkt,
   page, 0, 0, len, mpage_save);
 goto done;

free_unmap:
 kunmap(page);
 __free_page(page);
done:
 return ret;
}
