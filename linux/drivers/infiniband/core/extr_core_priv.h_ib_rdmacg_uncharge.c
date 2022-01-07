
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rdmacg_object {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;



__attribute__((used)) static inline void ib_rdmacg_uncharge(struct ib_rdmacg_object *cg_obj,
          struct ib_device *device,
          enum rdmacg_resource_type resource_index)
{
}
