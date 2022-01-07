
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {unsigned int begin; int es; } ;
struct entry {int dummy; } ;


 struct entry* __get_entry (int ,unsigned int) ;

__attribute__((used)) static struct entry *get_entry(struct entry_alloc *ea, unsigned index)
{
 return __get_entry(ea->es, ea->begin + index);
}
