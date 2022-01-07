
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_atmeth {int rkey; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void __atmeth_set_rkey(void *arg, u32 rkey)
{
 struct rxe_atmeth *atmeth = arg;

 atmeth->rkey = cpu_to_be32(rkey);
}
