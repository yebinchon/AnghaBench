
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_ah {int dummy; } ;
struct ib_ah {int dummy; } ;


 int rxe_drop_ref (struct rxe_ah*) ;
 struct rxe_ah* to_rah (struct ib_ah*) ;

__attribute__((used)) static void rxe_destroy_ah(struct ib_ah *ibah, u32 flags)
{
 struct rxe_ah *ah = to_rah(ibah);

 rxe_drop_ref(ah);
}
