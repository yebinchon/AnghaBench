
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_atmeth {int comp; } ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void __atmeth_set_comp(void *arg, u64 comp)
{
 struct rxe_atmeth *atmeth = arg;

 atmeth->comp = cpu_to_be64(comp);
}
