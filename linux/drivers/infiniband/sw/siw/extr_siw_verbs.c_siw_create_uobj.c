
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xa_limit {int dummy; } ;
struct siw_uobj {void* addr; int size; } ;
struct siw_ucontext {int uobj_nextkey; int xa; } ;


 int GFP_KERNEL ;
 int PAGE_ALIGN (int ) ;
 int SIW_INVAL_UOBJ_KEY ;
 int SIW_UOBJ_MAX_KEY ;
 struct xa_limit XA_LIMIT (int ,int ) ;
 int kfree (struct siw_uobj*) ;
 struct siw_uobj* kzalloc (int,int ) ;
 scalar_t__ xa_alloc_cyclic (int *,int *,struct siw_uobj*,struct xa_limit,int *,int ) ;

__attribute__((used)) static u32 siw_create_uobj(struct siw_ucontext *uctx, void *vaddr, u32 size)
{
 struct siw_uobj *uobj;
 struct xa_limit limit = XA_LIMIT(0, SIW_UOBJ_MAX_KEY);
 u32 key;

 uobj = kzalloc(sizeof(*uobj), GFP_KERNEL);
 if (!uobj)
  return SIW_INVAL_UOBJ_KEY;

 if (xa_alloc_cyclic(&uctx->xa, &key, uobj, limit, &uctx->uobj_nextkey,
       GFP_KERNEL) < 0) {
  kfree(uobj);
  return SIW_INVAL_UOBJ_KEY;
 }
 uobj->size = PAGE_ALIGN(size);
 uobj->addr = vaddr;

 return key;
}
