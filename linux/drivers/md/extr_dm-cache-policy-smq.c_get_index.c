
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {int begin; int es; } ;
struct entry {int dummy; } ;


 int to_index (int ,struct entry*) ;

__attribute__((used)) static unsigned get_index(struct entry_alloc *ea, struct entry *e)
{
 return to_index(ea->es, e) - ea->begin;
}
