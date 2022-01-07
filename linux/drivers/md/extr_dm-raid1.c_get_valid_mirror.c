
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int nr_mirrors; struct mirror* mirror; } ;
struct mirror {int error_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static struct mirror *get_valid_mirror(struct mirror_set *ms)
{
 struct mirror *m;

 for (m = ms->mirror; m < ms->mirror + ms->nr_mirrors; m++)
  if (!atomic_read(&m->error_count))
   return m;

 return ((void*)0);
}
