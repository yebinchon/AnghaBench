
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_deth {int sqp; } ;


 int DETH_SQP_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 __deth_sqp(void *arg)
{
 struct rxe_deth *deth = arg;

 return DETH_SQP_MASK & be32_to_cpu(deth->sqp);
}
