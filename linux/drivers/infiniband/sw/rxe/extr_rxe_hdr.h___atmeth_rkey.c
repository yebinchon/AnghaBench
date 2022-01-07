
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_atmeth {int rkey; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 __atmeth_rkey(void *arg)
{
 struct rxe_atmeth *atmeth = arg;

 return be32_to_cpu(atmeth->rkey);
}
