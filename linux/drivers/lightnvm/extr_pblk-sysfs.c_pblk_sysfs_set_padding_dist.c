
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int min_write_pgs; int nr_flush; int nr_flush_rst; int * pad_dist; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 scalar_t__ kstrtouint (char const*,int ,int*) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_set_padding_dist(struct pblk *pblk,
   const char *page, size_t len)
{
 size_t c_len;
 int reset_value;
 int buckets = pblk->min_write_pgs - 1;
 int i;

 c_len = strcspn(page, "\n");
 if (c_len >= len)
  return -EINVAL;

 if (kstrtouint(page, 0, &reset_value))
  return -EINVAL;

 if (reset_value != 0)
  return -EINVAL;

 for (i = 0; i < buckets; i++)
  atomic64_set(&pblk->pad_dist[i], 0);

 pblk->nr_flush_rst = atomic64_read(&pblk->nr_flush);

 return len;
}
