
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmcmsptwi_cfg {int arbf; int nak; int add10; int mst_code; int arb; int highspeed; } ;



__attribute__((used)) static inline u32 pmcmsptwi_cfg_to_reg(const struct pmcmsptwi_cfg *cfg)
{
 return ((cfg->arbf & 0xf) << 12) |
  ((cfg->nak & 0xf) << 8) |
  ((cfg->add10 & 0x1) << 7) |
  ((cfg->mst_code & 0x7) << 4) |
  ((cfg->arb & 0x1) << 1) |
  (cfg->highspeed & 0x1);
}
