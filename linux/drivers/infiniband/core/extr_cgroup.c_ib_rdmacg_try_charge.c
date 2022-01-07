
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rdmacg_object {int cg; } ;
struct ib_device {int cg_device; } ;
typedef enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;


 int rdmacg_try_charge (int *,int *,int) ;

int ib_rdmacg_try_charge(struct ib_rdmacg_object *cg_obj,
    struct ib_device *device,
    enum rdmacg_resource_type resource_index)
{
 return rdmacg_try_charge(&cg_obj->cg, &device->cg_device,
     resource_index);
}
