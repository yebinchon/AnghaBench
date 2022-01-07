
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {struct entry* end; struct entry* begin; } ;
struct entry {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static struct entry *__get_entry(struct entry_space *es, unsigned block)
{
 struct entry *e;

 e = es->begin + block;
 BUG_ON(e >= es->end);

 return e;
}
