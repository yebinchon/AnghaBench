
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_reth {int rkey; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void __reth_set_rkey(void *arg, u32 rkey)
{
 struct rxe_reth *reth = arg;

 reth->rkey = cpu_to_be32(rkey);
}
