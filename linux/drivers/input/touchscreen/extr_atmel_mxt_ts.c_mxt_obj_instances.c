
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_object {size_t instances_minus_one; } ;



__attribute__((used)) static size_t mxt_obj_instances(const struct mxt_object *obj)
{
 return obj->instances_minus_one + 1;
}
