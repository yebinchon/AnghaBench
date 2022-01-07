
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_bth {int flags; } ;


 int BTH_PAD_MASK ;

__attribute__((used)) static inline void __bth_set_pad(void *arg, u8 pad)
{
 struct rxe_bth *bth = arg;

 bth->flags = (BTH_PAD_MASK & (pad << 4)) |
   (~BTH_PAD_MASK & bth->flags);
}
