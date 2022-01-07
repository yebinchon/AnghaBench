
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int dummy; } ;
struct nouveau_crtc {int last_dpms; int index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;






 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NVReadVgaSeq (struct drm_device*,int ,int ) ;
 int NVSetOwner (struct drm_device*,int ) ;
 int NVVgaSeqReset (struct drm_device*,int ,int) ;
 int NVWriteVgaCrtc (struct drm_device*,int ,int ,unsigned char) ;
 int NVWriteVgaSeq (struct drm_device*,int ,int ,unsigned char) ;
 int NV_CIO_CRE_RPC1_INDEX ;
 int NV_CIO_CR_MODE_INDEX ;
 int NV_DEBUG (struct nouveau_drm*,char*,int,int ) ;
 int NV_VIO_SR_CLOCK_INDEX ;
 int mdelay (int) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;

__attribute__((used)) static void
nv_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 unsigned char seq1 = 0, crtc17 = 0;
 unsigned char crtc1A;

 NV_DEBUG(drm, "Setting dpms mode %d on CRTC %d\n", mode,
       nv_crtc->index);

 if (nv_crtc->last_dpms == mode)
  return;

 nv_crtc->last_dpms = mode;

 if (nv_two_heads(dev))
  NVSetOwner(dev, nv_crtc->index);


 crtc1A = NVReadVgaCrtc(dev, nv_crtc->index,
     NV_CIO_CRE_RPC1_INDEX) & ~0xC0;
 switch (mode) {
 case 129:

  seq1 = 0x20;
  crtc17 = 0x80;
  crtc1A |= 0x80;
  break;
 case 128:

  seq1 = 0x20;
  crtc17 = 0x80;
  crtc1A |= 0x40;
  break;
 case 131:

  seq1 = 0x20;
  crtc17 = 0x00;
  crtc1A |= 0xC0;
  break;
 case 130:
 default:

  seq1 = 0x00;
  crtc17 = 0x80;
  break;
 }

 NVVgaSeqReset(dev, nv_crtc->index, 1);

 seq1 |= (NVReadVgaSeq(dev, nv_crtc->index, NV_VIO_SR_CLOCK_INDEX) & ~0x20);
 NVWriteVgaSeq(dev, nv_crtc->index, NV_VIO_SR_CLOCK_INDEX, seq1);
 crtc17 |= (NVReadVgaCrtc(dev, nv_crtc->index, NV_CIO_CR_MODE_INDEX) & ~0x80);
 mdelay(10);
 NVWriteVgaCrtc(dev, nv_crtc->index, NV_CIO_CR_MODE_INDEX, crtc17);
 NVVgaSeqReset(dev, nv_crtc->index, 0);

 NVWriteVgaCrtc(dev, nv_crtc->index, NV_CIO_CRE_RPC1_INDEX, crtc1A);
}
