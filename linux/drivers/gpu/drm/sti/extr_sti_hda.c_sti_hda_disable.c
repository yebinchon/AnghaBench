
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hda {int enabled; int clk_pix; int clk_hddac; } ;
struct drm_bridge {struct sti_hda* driver_private; } ;


 int CFG_AWG_ASYNC_EN ;
 int DRM_DEBUG_DRIVER (char*) ;
 int HDA_ANA_ANC_CTRL ;
 int HDA_ANA_CFG ;
 int clk_disable_unprepare (int ) ;
 int hda_enable_hd_dacs (struct sti_hda*,int) ;
 int hda_read (struct sti_hda*,int ) ;
 int hda_write (struct sti_hda*,int ,int ) ;

__attribute__((used)) static void sti_hda_disable(struct drm_bridge *bridge)
{
 struct sti_hda *hda = bridge->driver_private;
 u32 val;

 if (!hda->enabled)
  return;

 DRM_DEBUG_DRIVER("\n");


 val = hda_read(hda, HDA_ANA_CFG);
 val &= ~CFG_AWG_ASYNC_EN;
 hda_write(hda, val, HDA_ANA_CFG);
 hda_write(hda, 0, HDA_ANA_ANC_CTRL);

 hda_enable_hd_dacs(hda, 0);


 clk_disable_unprepare(hda->clk_hddac);
 clk_disable_unprepare(hda->clk_pix);

 hda->enabled = 0;
}
