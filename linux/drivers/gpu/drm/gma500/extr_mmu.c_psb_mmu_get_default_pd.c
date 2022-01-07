
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_mmu_pd {int dummy; } ;
struct psb_mmu_driver {int sem; struct psb_mmu_pd* default_pd; } ;


 int down_read (int *) ;
 int up_read (int *) ;

struct psb_mmu_pd *psb_mmu_get_default_pd(struct psb_mmu_driver *driver)
{
 struct psb_mmu_pd *pd;

 down_read(&driver->sem);
 pd = driver->default_pd;
 up_read(&driver->sem);

 return pd;
}
