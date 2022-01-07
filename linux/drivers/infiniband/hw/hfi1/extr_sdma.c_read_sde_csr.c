
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sdma_engine {int this_idx; int dd; } ;


 int read_kctxt_csr (int ,int ,int ) ;

__attribute__((used)) static inline u64 read_sde_csr(
 struct sdma_engine *sde,
 u32 offset0)
{
 return read_kctxt_csr(sde->dd, sde->this_idx, offset0);
}
