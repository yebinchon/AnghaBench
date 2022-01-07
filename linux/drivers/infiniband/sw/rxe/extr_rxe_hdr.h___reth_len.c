
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_reth {int len; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 __reth_len(void *arg)
{
 struct rxe_reth *reth = arg;

 return be32_to_cpu(reth->len);
}
