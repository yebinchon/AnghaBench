
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_reth {int va; } ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u64 __reth_va(void *arg)
{
 struct rxe_reth *reth = arg;

 return be64_to_cpu(reth->va);
}
