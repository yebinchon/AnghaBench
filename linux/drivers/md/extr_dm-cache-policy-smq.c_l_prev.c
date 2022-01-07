
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {int dummy; } ;
struct entry {int prev; } ;


 struct entry* to_entry (struct entry_space*,int ) ;

__attribute__((used)) static struct entry *l_prev(struct entry_space *es, struct entry *e)
{
 return to_entry(es, e->prev);
}
