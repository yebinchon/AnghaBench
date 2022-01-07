
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {scalar_t__ mode; int user_count; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ MSC_MODE_MULTI ;
 scalar_t__ MSC_MODE_SINGLE ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int atomic_read (int *) ;
 int msc_buffer_contig_alloc (struct msc*,unsigned long) ;
 int msc_buffer_multi_alloc (struct msc*,unsigned long*,unsigned int) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static int msc_buffer_alloc(struct msc *msc, unsigned long *nr_pages,
       unsigned int nr_wins)
{
 int ret;


 if (atomic_read(&msc->user_count) != -1)
  return -EBUSY;

 if (msc->mode == MSC_MODE_SINGLE) {
  if (nr_wins != 1)
   return -EINVAL;

  ret = msc_buffer_contig_alloc(msc, nr_pages[0] << PAGE_SHIFT);
 } else if (msc->mode == MSC_MODE_MULTI) {
  ret = msc_buffer_multi_alloc(msc, nr_pages, nr_wins);
 } else {
  ret = -ENOTSUPP;
 }

 if (!ret) {

  smp_mb__before_atomic();

  if (WARN_ON_ONCE(atomic_cmpxchg(&msc->user_count, -1, 0) != -1))
   return -EINVAL;
 }

 return ret;
}
