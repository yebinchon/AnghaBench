
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int default_mirror; struct mirror* mirror; } ;
struct mirror {int dummy; } ;


 size_t atomic_read (int *) ;

__attribute__((used)) static struct mirror *get_default_mirror(struct mirror_set *ms)
{
 return &ms->mirror[atomic_read(&ms->default_mirror)];
}
