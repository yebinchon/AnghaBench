
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct siw_uobj {scalar_t__ size; } ;
struct siw_ucontext {int xa; } ;


 struct siw_uobj* xa_load (int *,unsigned long) ;

__attribute__((used)) static struct siw_uobj *siw_get_uobj(struct siw_ucontext *uctx,
         unsigned long off, u32 size)
{
 struct siw_uobj *uobj = xa_load(&uctx->xa, off);

 if (uobj && uobj->size == size)
  return uobj;

 return ((void*)0);
}
