
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_deth {int qkey; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 __deth_qkey(void *arg)
{
 struct rxe_deth *deth = arg;

 return be32_to_cpu(deth->qkey);
}
