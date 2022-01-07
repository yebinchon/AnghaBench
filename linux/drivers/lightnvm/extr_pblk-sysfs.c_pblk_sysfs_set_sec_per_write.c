
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int min_write_pgs; int max_write_pgs; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtouint (char const*,int ,int*) ;
 int pblk_is_oob_meta_supported (struct pblk*) ;
 int pblk_set_sec_per_write (struct pblk*,int) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_set_sec_per_write(struct pblk *pblk,
          const char *page, size_t len)
{
 size_t c_len;
 int sec_per_write;

 c_len = strcspn(page, "\n");
 if (c_len >= len)
  return -EINVAL;

 if (kstrtouint(page, 0, &sec_per_write))
  return -EINVAL;

 if (!pblk_is_oob_meta_supported(pblk)) {



  return -EINVAL;
 }

 if (sec_per_write < pblk->min_write_pgs
    || sec_per_write > pblk->max_write_pgs
    || sec_per_write % pblk->min_write_pgs != 0)
  return -EINVAL;

 pblk_set_sec_per_write(pblk, sec_per_write);

 return len;
}
