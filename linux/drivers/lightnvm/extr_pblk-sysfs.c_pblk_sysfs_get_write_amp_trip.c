
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {scalar_t__ pad_rst_wa; int pad_wa; scalar_t__ gc_rst_wa; int gc_wa; scalar_t__ user_rst_wa; int user_wa; } ;
typedef int ssize_t ;


 scalar_t__ atomic64_read (int *) ;
 int pblk_get_write_amp (scalar_t__,scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_get_write_amp_trip(struct pblk *pblk, char *page)
{
 return pblk_get_write_amp(
  atomic64_read(&pblk->user_wa) - pblk->user_rst_wa,
  atomic64_read(&pblk->gc_wa) - pblk->gc_rst_wa,
  atomic64_read(&pblk->pad_wa) - pblk->pad_rst_wa, page);
}
