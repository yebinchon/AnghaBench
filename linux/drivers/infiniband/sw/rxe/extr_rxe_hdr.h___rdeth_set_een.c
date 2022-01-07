
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_rdeth {int een; } ;


 int RDETH_EEN_MASK ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __rdeth_set_een(void *arg, u32 een)
{
 struct rxe_rdeth *rdeth = arg;

 rdeth->een = cpu_to_be32(RDETH_EEN_MASK & een);
}
