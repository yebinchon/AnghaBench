
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uobject {int id; TYPE_1__* ufile; } ;
struct TYPE_2__ {int idr; } ;


 int GFP_KERNEL ;
 int xa_alloc (int *,int *,int *,int ,int ) ;
 int xa_limit_32b ;

__attribute__((used)) static int idr_add_uobj(struct ib_uobject *uobj)
{





 return xa_alloc(&uobj->ufile->idr, &uobj->id, ((void*)0), xa_limit_32b,
   GFP_KERNEL);
}
