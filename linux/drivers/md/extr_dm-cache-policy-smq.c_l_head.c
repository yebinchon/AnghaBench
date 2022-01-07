
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int head; } ;
struct entry_space {int dummy; } ;
struct entry {int dummy; } ;


 struct entry* to_entry (struct entry_space*,int ) ;

__attribute__((used)) static struct entry *l_head(struct entry_space *es, struct ilist *l)
{
 return to_entry(es, l->head);
}
