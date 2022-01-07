
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int sec_per_write; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t pblk_sysfs_get_sec_per_write(struct pblk *pblk, char *page)
{
 return snprintf(page, PAGE_SIZE, "%d\n", pblk->sec_per_write);
}
