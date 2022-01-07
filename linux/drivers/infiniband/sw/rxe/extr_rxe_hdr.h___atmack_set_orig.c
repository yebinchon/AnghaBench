
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_atmack {int orig; } ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void __atmack_set_orig(void *arg, u64 orig)
{
 struct rxe_atmack *atmack = arg;

 atmack->orig = cpu_to_be64(orig);
}
