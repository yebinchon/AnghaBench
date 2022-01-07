
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int min_write_pgs; unsigned long long nr_flush_rst; int * pad_dist; int nr_flush; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 unsigned long long atomic64_read (int *) ;
 unsigned long long bucket_percentage (unsigned long long,unsigned long long) ;
 scalar_t__ snprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t pblk_sysfs_get_padding_dist(struct pblk *pblk, char *page)
{
 int sz = 0;
 unsigned long long total;
 unsigned long long total_buckets = 0;
 int buckets = pblk->min_write_pgs - 1;
 int i;

 total = atomic64_read(&pblk->nr_flush) - pblk->nr_flush_rst;
 if (!total) {
  for (i = 0; i < (buckets + 1); i++)
   sz += snprintf(page + sz, PAGE_SIZE - sz,
    "%d:0 ", i);
  sz += snprintf(page + sz, PAGE_SIZE - sz, "\n");

  return sz;
 }

 for (i = 0; i < buckets; i++)
  total_buckets += atomic64_read(&pblk->pad_dist[i]);

 sz += snprintf(page + sz, PAGE_SIZE - sz, "0:%lld%% ",
  bucket_percentage(total - total_buckets, total));

 for (i = 0; i < buckets; i++) {
  unsigned long long p;

  p = bucket_percentage(atomic64_read(&pblk->pad_dist[i]),
       total);
  sz += snprintf(page + sz, PAGE_SIZE - sz, "%d:%lld%% ",
    i + 1, p);
 }
 sz += snprintf(page + sz, PAGE_SIZE - sz, "\n");

 return sz;
}
