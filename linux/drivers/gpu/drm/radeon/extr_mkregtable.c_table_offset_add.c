
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int offsets; } ;
struct offset {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void table_offset_add(struct table *t, struct offset *offset)
{
 list_add_tail(&offset->list, &t->offsets);
}
