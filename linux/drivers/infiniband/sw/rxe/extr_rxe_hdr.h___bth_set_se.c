
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_bth {int flags; } ;


 int BTH_SE_MASK ;

__attribute__((used)) static inline void __bth_set_se(void *arg, int se)
{
 struct rxe_bth *bth = arg;

 if (se)
  bth->flags |= BTH_SE_MASK;
 else
  bth->flags &= ~BTH_SE_MASK;
}
