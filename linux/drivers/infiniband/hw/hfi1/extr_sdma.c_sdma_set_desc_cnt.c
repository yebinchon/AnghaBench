
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct sdma_engine {TYPE_1__* dd; } ;
struct TYPE_2__ {int flags; } ;


 int DESC_CNT ;
 int DESC_CNT_CNT_MASK ;
 int DESC_CNT_CNT_SHIFT ;
 int HFI1_HAS_SDMA_TIMEOUT ;
 unsigned int SD (int ) ;
 int write_sde_csr (struct sdma_engine*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void sdma_set_desc_cnt(struct sdma_engine *sde, unsigned cnt)
{
 u64 reg;

 if (!(sde->dd->flags & HFI1_HAS_SDMA_TIMEOUT))
  return;
 reg = cnt;
 reg &= SD(DESC_CNT_CNT_MASK);
 reg <<= SD(DESC_CNT_CNT_SHIFT);
 write_sde_csr(sde, SD(DESC_CNT), reg);
}
