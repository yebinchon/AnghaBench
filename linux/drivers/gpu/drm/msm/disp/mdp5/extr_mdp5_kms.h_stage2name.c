
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;


 char const* NAME (int ) ;
__attribute__((used)) static inline const char *stage2name(enum mdp_mixer_stage_id stage)
{
 static const char *names[] = {

  [128] = "STAGE_UNUSED", [129] = "STAGE_BASE",
  [135] = "STAGE0", [134] = "STAGE1", [133] = "STAGE2",
  [132] = "STAGE3", [131] = "STAGE4", [130] = "STAGE6",

 };
 return names[stage];
}
