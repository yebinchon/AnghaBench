
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hactive; } ;
struct mtk_dsi {int format; scalar_t__ regs; TYPE_1__ vm; } ;


 scalar_t__ DSI_PSCTRL ;
 int DSI_PS_WC ;
 int LOOSELY_PS_18BIT_RGB666 ;




 int PACKED_PS_16BIT_RGB565 ;
 int PACKED_PS_18BIT_RGB666 ;
 int PACKED_PS_24BIT_RGB888 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_ps_control(struct mtk_dsi *dsi)
{
 u32 dsi_tmp_buf_bpp;
 u32 tmp_reg;

 switch (dsi->format) {
 case 128:
  tmp_reg = PACKED_PS_24BIT_RGB888;
  dsi_tmp_buf_bpp = 3;
  break;
 case 130:
  tmp_reg = LOOSELY_PS_18BIT_RGB666;
  dsi_tmp_buf_bpp = 3;
  break;
 case 129:
  tmp_reg = PACKED_PS_18BIT_RGB666;
  dsi_tmp_buf_bpp = 3;
  break;
 case 131:
  tmp_reg = PACKED_PS_16BIT_RGB565;
  dsi_tmp_buf_bpp = 2;
  break;
 default:
  tmp_reg = PACKED_PS_24BIT_RGB888;
  dsi_tmp_buf_bpp = 3;
  break;
 }

 tmp_reg += dsi->vm.hactive * dsi_tmp_buf_bpp & DSI_PS_WC;
 writel(tmp_reg, dsi->regs + DSI_PSCTRL);
}
