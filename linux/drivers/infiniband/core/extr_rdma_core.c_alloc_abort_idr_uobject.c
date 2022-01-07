
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_uobject {int id; TYPE_2__* ufile; TYPE_1__* context; int cg_obj; } ;
struct TYPE_4__ {int idr; } ;
struct TYPE_3__ {int device; } ;


 int RDMACG_RESOURCE_HCA_OBJECT ;
 int ib_rdmacg_uncharge (int *,int ,int ) ;
 int xa_erase (int *,int ) ;

__attribute__((used)) static void alloc_abort_idr_uobject(struct ib_uobject *uobj)
{
 ib_rdmacg_uncharge(&uobj->cg_obj, uobj->context->device,
      RDMACG_RESOURCE_HCA_OBJECT);

 xa_erase(&uobj->ufile->idr, uobj->id);
}
