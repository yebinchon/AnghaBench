
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {int * Attribute; int * Graphics; int * Sequencer; int MiscOutReg; } ;
struct drm_device {int dummy; } ;


 int NVSetEnablePalette (struct drm_device*,int,int) ;
 int NVWritePRMVIO (struct drm_device*,int,int ,int ) ;
 int NVWriteVgaAttr (struct drm_device*,int,int,int ) ;
 int NVWriteVgaGr (struct drm_device*,int,int,int ) ;
 int NVWriteVgaSeq (struct drm_device*,int,int,int ) ;
 int NV_PRMVIO_MISC__WRITE ;
 int nv_lock_vga_crtc_base (struct drm_device*,int,int) ;
 int wr_cio_state (struct drm_device*,int,struct nv04_crtc_reg*,int) ;

__attribute__((used)) static void
nv_load_state_vga(struct drm_device *dev, int head,
    struct nv04_mode_state *state)
{
 struct nv04_crtc_reg *regp = &state->crtc_reg[head];
 int i;

 NVWritePRMVIO(dev, head, NV_PRMVIO_MISC__WRITE, regp->MiscOutReg);

 for (i = 0; i < 5; i++)
  NVWriteVgaSeq(dev, head, i, regp->Sequencer[i]);

 nv_lock_vga_crtc_base(dev, head, 0);
 for (i = 0; i < 25; i++)
  wr_cio_state(dev, head, regp, i);
 nv_lock_vga_crtc_base(dev, head, 1);

 for (i = 0; i < 9; i++)
  NVWriteVgaGr(dev, head, i, regp->Graphics[i]);

 NVSetEnablePalette(dev, head, 1);
 for (i = 0; i < 21; i++)
  NVWriteVgaAttr(dev, head, i, regp->Attribute[i]);
 NVSetEnablePalette(dev, head, 0);
}
