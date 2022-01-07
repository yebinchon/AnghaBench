
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int nr_mirrors; int mirror; } ;
struct mirror {int error_count; } ;
typedef int sector_t ;


 int atomic_read (int *) ;
 struct mirror* get_default_mirror (struct mirror_set*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static struct mirror *choose_mirror(struct mirror_set *ms, sector_t sector)
{
 struct mirror *m = get_default_mirror(ms);

 do {
  if (likely(!atomic_read(&m->error_count)))
   return m;

  if (m-- == ms->mirror)
   m += ms->nr_mirrors;
 } while (m != get_default_mirror(ms));

 return ((void*)0);
}
