
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rwb; } ;
typedef int ssize_t ;


 int pblk_rb_sysfs (int *,char*) ;

__attribute__((used)) static ssize_t pblk_sysfs_write_buffer(struct pblk *pblk, char *page)
{
 return pblk_rb_sysfs(&pblk->rwb, page);
}
