
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rxe_bth {int pkey; } ;


 int cpu_to_be16 (int ) ;

__attribute__((used)) static inline void __bth_set_pkey(void *arg, u16 pkey)
{
 struct rxe_bth *bth = arg;

 bth->pkey = cpu_to_be16(pkey);
}
