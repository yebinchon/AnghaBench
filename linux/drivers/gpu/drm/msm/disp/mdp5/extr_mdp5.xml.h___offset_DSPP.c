
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* base; } ;
struct TYPE_4__ {TYPE_1__ dspp; } ;


 int INVALID_IDX (int) ;
 TYPE_2__* mdp5_cfg ;

__attribute__((used)) static inline uint32_t __offset_DSPP(uint32_t idx)
{
 switch (idx) {
  case 0: return (mdp5_cfg->dspp.base[0]);
  case 1: return (mdp5_cfg->dspp.base[1]);
  case 2: return (mdp5_cfg->dspp.base[2]);
  case 3: return (mdp5_cfg->dspp.base[3]);
  default: return INVALID_IDX(idx);
 }
}
