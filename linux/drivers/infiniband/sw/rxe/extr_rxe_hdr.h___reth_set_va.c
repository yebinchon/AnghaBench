
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_reth {int va; } ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void __reth_set_va(void *arg, u64 va)
{
 struct rxe_reth *reth = arg;

 reth->va = cpu_to_be64(va);
}
