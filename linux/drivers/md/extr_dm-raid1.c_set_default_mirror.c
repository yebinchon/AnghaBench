
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int default_mirror; struct mirror* mirror; } ;
struct mirror {struct mirror_set* ms; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void set_default_mirror(struct mirror *m)
{
 struct mirror_set *ms = m->ms;
 struct mirror *m0 = &(ms->mirror[0]);

 atomic_set(&ms->default_mirror, m - m0);
}
