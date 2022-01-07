
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int * mapping; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {unsigned long nr_pages; int buf_mutex; int user_count; int mmap_count; } ;
struct TYPE_2__ {struct msc_iter* private_data; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_dec (int *) ;
 int atomic_dec_and_mutex_lock (int *,int *) ;
 struct page* msc_buffer_get_page (struct msc*,unsigned long) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void msc_mmap_close(struct vm_area_struct *vma)
{
 struct msc_iter *iter = vma->vm_file->private_data;
 struct msc *msc = iter->msc;
 unsigned long pg;

 if (!atomic_dec_and_mutex_lock(&msc->mmap_count, &msc->buf_mutex))
  return;


 for (pg = 0; pg < msc->nr_pages; pg++) {
  struct page *page = msc_buffer_get_page(msc, pg);

  if (WARN_ON_ONCE(!page))
   continue;

  if (page->mapping)
   page->mapping = ((void*)0);
 }


 atomic_dec(&msc->user_count);
 mutex_unlock(&msc->buf_mutex);
}
