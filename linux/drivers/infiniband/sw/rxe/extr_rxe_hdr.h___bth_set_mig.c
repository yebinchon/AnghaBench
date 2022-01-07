
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rxe_bth {int flags; } ;


 int BTH_MIG_MASK ;

__attribute__((used)) static inline void __bth_set_mig(void *arg, u8 mig)
{
 struct rxe_bth *bth = arg;

 if (mig)
  bth->flags |= BTH_MIG_MASK;
 else
  bth->flags &= ~BTH_MIG_MASK;
}
