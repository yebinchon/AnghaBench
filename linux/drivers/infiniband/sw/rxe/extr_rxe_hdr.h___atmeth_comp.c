
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_atmeth {int comp; } ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u64 __atmeth_comp(void *arg)
{
 struct rxe_atmeth *atmeth = arg;

 return be64_to_cpu(atmeth->comp);
}
