
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_reth {int len; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void __reth_set_len(void *arg, u32 len)
{
 struct rxe_reth *reth = arg;

 reth->len = cpu_to_be32(len);
}
