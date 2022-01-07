
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rxe_bth {int pkey; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline u16 __bth_pkey(void *arg)
{
 struct rxe_bth *bth = arg;

 return be16_to_cpu(bth->pkey);
}
