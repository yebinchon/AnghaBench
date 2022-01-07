
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_mic {int dev; int sysreg; scalar_t__ i80_mode; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int DSD_CFG_MUX ;
 unsigned int MIC0_I80_MUX ;
 unsigned int MIC0_ON_MUX ;
 unsigned int MIC0_RGB_MUX ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void mic_set_path(struct exynos_mic *mic, bool enable)
{
 int ret;
 unsigned int val;

 ret = regmap_read(mic->sysreg, DSD_CFG_MUX, &val);
 if (ret) {
  DRM_DEV_ERROR(mic->dev,
         "mic: Failed to read system register\n");
  return;
 }

 if (enable) {
  if (mic->i80_mode)
   val |= MIC0_I80_MUX;
  else
   val |= MIC0_RGB_MUX;

  val |= MIC0_ON_MUX;
 } else
  val &= ~(MIC0_RGB_MUX | MIC0_I80_MUX | MIC0_ON_MUX);

 ret = regmap_write(mic->sysreg, DSD_CFG_MUX, val);
 if (ret)
  DRM_DEV_ERROR(mic->dev,
         "mic: Failed to read system register\n");
}
