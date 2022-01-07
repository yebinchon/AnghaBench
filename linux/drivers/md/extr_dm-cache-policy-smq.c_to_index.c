
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {struct entry* begin; struct entry* end; } ;
struct entry {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static unsigned to_index(struct entry_space *es, struct entry *e)
{
 BUG_ON(e < es->begin || e >= es->end);
 return e - es->begin;
}
