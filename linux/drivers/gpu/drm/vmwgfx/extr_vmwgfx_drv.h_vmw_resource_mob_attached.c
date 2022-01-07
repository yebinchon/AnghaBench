
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int mob_head; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool vmw_resource_mob_attached(const struct vmw_resource *res)
{
 return !list_empty(&res->mob_head);
}
