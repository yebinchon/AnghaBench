
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;

__attribute__((used)) static void vmw_resource_relocations_free(struct list_head *list)
{

 INIT_LIST_HEAD(list);
}
