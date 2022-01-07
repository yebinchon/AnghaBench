
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ is_de3; } ;


 int DE2_BLD_BASE ;
 int DE3_BLD_BASE ;

__attribute__((used)) static inline u32
sun8i_blender_base(struct sun8i_mixer *mixer)
{
 return mixer->cfg->is_de3 ? DE3_BLD_BASE : DE2_BLD_BASE;
}
