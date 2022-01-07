
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct videomode {int hactive; int vactive; } ;
struct mtk_dsi {int format; scalar_t__ regs; struct videomode vm; } ;


 scalar_t__ DSI_HSTX_CKL_WC ;
 scalar_t__ DSI_PSCTRL ;
 scalar_t__ DSI_VACT_NL ;
 int LOOSELY_PS_18BIT_RGB666 ;




 int PACKED_PS_16BIT_RGB565 ;
 int PACKED_PS_18BIT_RGB666 ;
 int PACKED_PS_24BIT_RGB888 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_ps_control_vact(struct mtk_dsi *dsi)
{
 struct videomode *vm = &dsi->vm;
 u32 dsi_buf_bpp, ps_wc;
 u32 ps_bpp_mode;

 if (dsi->format == 131)
  dsi_buf_bpp = 2;
 else
  dsi_buf_bpp = 3;

 ps_wc = vm->hactive * dsi_buf_bpp;
 ps_bpp_mode = ps_wc;

 switch (dsi->format) {
 case 128:
  ps_bpp_mode |= PACKED_PS_24BIT_RGB888;
  break;
 case 130:
  ps_bpp_mode |= PACKED_PS_18BIT_RGB666;
  break;
 case 129:
  ps_bpp_mode |= LOOSELY_PS_18BIT_RGB666;
  break;
 case 131:
  ps_bpp_mode |= PACKED_PS_16BIT_RGB565;
  break;
 }

 writel(vm->vactive, dsi->regs + DSI_VACT_NL);
 writel(ps_bpp_mode, dsi->regs + DSI_PSCTRL);
 writel(ps_wc, dsi->regs + DSI_HSTX_CKL_WC);
}
