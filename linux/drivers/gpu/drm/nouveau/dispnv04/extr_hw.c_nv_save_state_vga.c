
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {int * Sequencer; int * Graphics; int * Attribute; int MiscOutReg; } ;
struct drm_device {int dummy; } ;


 int NVReadPRMVIO (struct drm_device*,int,int ) ;
 int NVReadVgaAttr (struct drm_device*,int,int) ;
 int NVReadVgaGr (struct drm_device*,int,int) ;
 int NVReadVgaSeq (struct drm_device*,int,int) ;
 int NVSetEnablePalette (struct drm_device*,int,int) ;
 int NV_PRMVIO_MISC__READ ;
 int rd_cio_state (struct drm_device*,int,struct nv04_crtc_reg*,int) ;

__attribute__((used)) static void
nv_save_state_vga(struct drm_device *dev, int head,
    struct nv04_mode_state *state)
{
 struct nv04_crtc_reg *regp = &state->crtc_reg[head];
 int i;

 regp->MiscOutReg = NVReadPRMVIO(dev, head, NV_PRMVIO_MISC__READ);

 for (i = 0; i < 25; i++)
  rd_cio_state(dev, head, regp, i);

 NVSetEnablePalette(dev, head, 1);
 for (i = 0; i < 21; i++)
  regp->Attribute[i] = NVReadVgaAttr(dev, head, i);
 NVSetEnablePalette(dev, head, 0);

 for (i = 0; i < 9; i++)
  regp->Graphics[i] = NVReadVgaGr(dev, head, i);

 for (i = 0; i < 5; i++)
  regp->Sequencer[i] = NVReadVgaSeq(dev, head, i);
}
