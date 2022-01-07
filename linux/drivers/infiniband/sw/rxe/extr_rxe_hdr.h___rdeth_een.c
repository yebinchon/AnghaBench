
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_rdeth {int een; } ;


 int RDETH_EEN_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 __rdeth_een(void *arg)
{
 struct rxe_rdeth *rdeth = arg;

 return RDETH_EEN_MASK & be32_to_cpu(rdeth->een);
}
