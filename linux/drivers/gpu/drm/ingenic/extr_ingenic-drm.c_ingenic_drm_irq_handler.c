
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int crtc; int map; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int JZ_LCD_STATE_EOF_IRQ ;
 int JZ_REG_LCD_STATE ;
 int drm_crtc_handle_vblank (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;

__attribute__((used)) static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
{
 struct ingenic_drm *priv = arg;
 unsigned int state;

 regmap_read(priv->map, JZ_REG_LCD_STATE, &state);

 regmap_update_bits(priv->map, JZ_REG_LCD_STATE,
      JZ_LCD_STATE_EOF_IRQ, 0);

 if (state & JZ_LCD_STATE_EOF_IRQ)
  drm_crtc_handle_vblank(&priv->crtc);

 return IRQ_HANDLED;
}
