
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_ucontext {int dummy; } ;
struct ib_ucontext {int dummy; } ;


 int rxe_drop_ref (struct rxe_ucontext*) ;
 struct rxe_ucontext* to_ruc (struct ib_ucontext*) ;

__attribute__((used)) static void rxe_dealloc_ucontext(struct ib_ucontext *ibuc)
{
 struct rxe_ucontext *uc = to_ruc(ibuc);

 rxe_drop_ref(uc);
}
