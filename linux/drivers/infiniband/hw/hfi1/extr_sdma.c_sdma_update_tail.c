
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdma_engine {int tail_csr; } ;


 int smp_wmb () ;
 int writeq (int ,int ) ;

__attribute__((used)) static inline void sdma_update_tail(struct sdma_engine *sde, u16 tail)
{

 smp_wmb();
 writeq(tail, sde->tail_csr);
}
