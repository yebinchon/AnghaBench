
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv7xx_pl {int flags; } ;
struct radeon_device {int dummy; } ;


 int ATOM_PPLIB_R600_FLAGS_LOWPOWER ;
 int MC_CG_SEQ_DRAMCONF_S0 ;
 int MC_CG_SEQ_DRAMCONF_S1 ;

u8 rv770_get_seq_value(struct radeon_device *rdev,
         struct rv7xx_pl *pl)
{
 return (pl->flags & ATOM_PPLIB_R600_FLAGS_LOWPOWER) ?
  MC_CG_SEQ_DRAMCONF_S0 : MC_CG_SEQ_DRAMCONF_S1;
}
