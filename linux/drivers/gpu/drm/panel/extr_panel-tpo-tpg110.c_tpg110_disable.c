
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpg110 {int backlight; } ;
struct drm_panel {int dummy; } ;


 int TPG110_CTRL2_PM ;
 int backlight_disable (int ) ;
 struct tpg110* to_tpg110 (struct drm_panel*) ;
 int tpg110_read_reg (struct tpg110*,int ) ;
 int tpg110_write_reg (struct tpg110*,int ,int ) ;

__attribute__((used)) static int tpg110_disable(struct drm_panel *panel)
{
 struct tpg110 *tpg = to_tpg110(panel);
 u8 val;


 val = tpg110_read_reg(tpg, TPG110_CTRL2_PM);
 val &= ~TPG110_CTRL2_PM;
 tpg110_write_reg(tpg, TPG110_CTRL2_PM, val);

 backlight_disable(tpg->backlight);

 return 0;
}
