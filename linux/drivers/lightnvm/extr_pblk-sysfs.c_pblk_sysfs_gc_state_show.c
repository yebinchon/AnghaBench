
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int pblk_gc_sysfs_state_show (struct pblk*,int*,int*) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t pblk_sysfs_gc_state_show(struct pblk *pblk, char *page)
{
 int gc_enabled, gc_active;

 pblk_gc_sysfs_state_show(pblk, &gc_enabled, &gc_active);
 return snprintf(page, PAGE_SIZE, "gc_enabled=%d, gc_active=%d\n",
     gc_enabled, gc_active);
}
