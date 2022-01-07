
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int regs; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN8I_MIXER_GLOBAL_DBUFF ;
 int SUN8I_MIXER_GLOBAL_DBUFF_ENABLE ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sun8i_mixer_commit(struct sunxi_engine *engine)
{
 DRM_DEBUG_DRIVER("Committing changes\n");

 regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
       SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
}
