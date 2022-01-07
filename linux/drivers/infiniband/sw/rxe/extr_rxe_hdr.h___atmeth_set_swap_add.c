
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_atmeth {int swap_add; } ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void __atmeth_set_swap_add(void *arg, u64 swap_add)
{
 struct rxe_atmeth *atmeth = arg;

 atmeth->swap_add = cpu_to_be64(swap_add);
}
