
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_mregion {int mapsz; int refcount; int * map; } ;


 int kfree (int ) ;
 int percpu_ref_exit (int *) ;

__attribute__((used)) static void rvt_deinit_mregion(struct rvt_mregion *mr)
{
 int i = mr->mapsz;

 mr->mapsz = 0;
 while (i)
  kfree(mr->map[--i]);
 percpu_ref_exit(&mr->refcount);
}
