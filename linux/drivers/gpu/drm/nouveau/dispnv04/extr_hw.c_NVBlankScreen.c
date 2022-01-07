
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 unsigned char NVReadVgaSeq (struct drm_device*,int,int ) ;
 int NVSetOwner (struct drm_device*,int) ;
 int NVVgaSeqReset (struct drm_device*,int,int) ;
 int NVWriteVgaSeq (struct drm_device*,int,int ,unsigned char) ;
 int NV_VIO_SR_CLOCK_INDEX ;
 scalar_t__ nv_two_heads (struct drm_device*) ;

void
NVBlankScreen(struct drm_device *dev, int head, bool blank)
{
 unsigned char seq1;

 if (nv_two_heads(dev))
  NVSetOwner(dev, head);

 seq1 = NVReadVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX);

 NVVgaSeqReset(dev, head, 1);
 if (blank)
  NVWriteVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 | 0x20);
 else
  NVWriteVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 & ~0x20);
 NVVgaSeqReset(dev, head, 0);
}
