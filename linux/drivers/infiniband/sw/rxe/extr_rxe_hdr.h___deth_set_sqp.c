
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_deth {int sqp; } ;


 int DETH_SQP_MASK ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __deth_set_sqp(void *arg, u32 sqp)
{
 struct rxe_deth *deth = arg;

 deth->sqp = cpu_to_be32(DETH_SQP_MASK & sqp);
}
