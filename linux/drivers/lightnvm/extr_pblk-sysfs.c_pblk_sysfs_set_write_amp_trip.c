
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int gc_wa; void* gc_rst_wa; int pad_wa; void* pad_rst_wa; int user_wa; void* user_rst_wa; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 void* atomic64_read (int *) ;
 scalar_t__ kstrtouint (char const*,int ,int*) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_set_write_amp_trip(struct pblk *pblk,
   const char *page, size_t len)
{
 size_t c_len;
 int reset_value;

 c_len = strcspn(page, "\n");
 if (c_len >= len)
  return -EINVAL;

 if (kstrtouint(page, 0, &reset_value))
  return -EINVAL;

 if (reset_value != 0)
  return -EINVAL;

 pblk->user_rst_wa = atomic64_read(&pblk->user_wa);
 pblk->pad_rst_wa = atomic64_read(&pblk->pad_wa);
 pblk->gc_rst_wa = atomic64_read(&pblk->gc_wa);

 return len;
}
