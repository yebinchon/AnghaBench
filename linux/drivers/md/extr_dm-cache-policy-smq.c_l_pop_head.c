
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int dummy; } ;
struct entry_space {int dummy; } ;
struct entry {int sentinel; } ;


 int l_del (struct entry_space*,struct ilist*,struct entry*) ;
 struct entry* l_head (struct entry_space*,struct ilist*) ;
 struct entry* l_next (struct entry_space*,struct entry*) ;

__attribute__((used)) static struct entry *l_pop_head(struct entry_space *es, struct ilist *l)
{
 struct entry *e;

 for (e = l_head(es, l); e; e = l_next(es, e))
  if (!e->sentinel) {
   l_del(es, l, e);
   return e;
  }

 return ((void*)0);
}
