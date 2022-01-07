
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int const u32 ;
struct TYPE_2__ {size_t mode_opt; } ;
struct d40_chan {TYPE_1__ dma_cfg; } ;
 scalar_t__ chan_is_physical (struct d40_chan*) ;

__attribute__((used)) static u32 d40_get_prmo(struct d40_chan *d40c)
{
 static const unsigned int phy_map[] = {
  [130]
   = 136,
  [128]
   = 134,
  [129]
   = 135,
 };
 static const unsigned int log_map[] = {
  [131]
   = 137,
  [132]
   = 138,
  [133]
   = 139,
 };

 if (chan_is_physical(d40c))
  return phy_map[d40c->dma_cfg.mode_opt];
 else
  return log_map[d40c->dma_cfg.mode_opt];
}
