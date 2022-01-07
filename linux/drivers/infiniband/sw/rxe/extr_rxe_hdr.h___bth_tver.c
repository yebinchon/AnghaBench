
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_bth {int flags; } ;


 int BTH_TVER_MASK ;

__attribute__((used)) static inline u8 __bth_tver(void *arg)
{
 struct rxe_bth *bth = arg;

 return BTH_TVER_MASK & bth->flags;
}
