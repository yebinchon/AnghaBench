
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int pad_wa; int gc_wa; int user_wa; } ;
typedef int ssize_t ;


 int atomic64_read (int *) ;
 int pblk_get_write_amp (int ,int ,int ,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_get_write_amp_mileage(struct pblk *pblk, char *page)
{
 return pblk_get_write_amp(atomic64_read(&pblk->user_wa),
  atomic64_read(&pblk->gc_wa), atomic64_read(&pblk->pad_wa),
  page);
}
