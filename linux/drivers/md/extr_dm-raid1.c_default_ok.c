
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror {int error_count; int ms; } ;


 int atomic_read (int *) ;
 struct mirror* get_default_mirror (int ) ;

__attribute__((used)) static int default_ok(struct mirror *m)
{
 struct mirror *default_mirror = get_default_mirror(m->ms);

 return !atomic_read(&default_mirror->error_count);
}
