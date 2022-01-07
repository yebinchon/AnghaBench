
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int erase_failed; int write_failed; int read_failed_gc; int read_empty; int read_high_ecc; int read_failed; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_long_read (int *) ;
 int snprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t pblk_sysfs_stats(struct pblk *pblk, char *page)
{
 ssize_t sz;

 sz = snprintf(page, PAGE_SIZE,
   "read_failed=%lu, read_high_ecc=%lu, read_empty=%lu, read_failed_gc=%lu, write_failed=%lu, erase_failed=%lu\n",
   atomic_long_read(&pblk->read_failed),
   atomic_long_read(&pblk->read_high_ecc),
   atomic_long_read(&pblk->read_empty),
   atomic_long_read(&pblk->read_failed_gc),
   atomic_long_read(&pblk->write_failed),
   atomic_long_read(&pblk->erase_failed));

 return sz;
}
