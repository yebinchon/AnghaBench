
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int NVWriteVgaSeq (struct drm_device*,int,int ,int) ;
 int NV_VIO_SR_RESET_INDEX ;

__attribute__((used)) static inline void NVVgaSeqReset(struct drm_device *dev, int head, bool start)
{
 NVWriteVgaSeq(dev, head, NV_VIO_SR_RESET_INDEX, start ? 0x1 : 0x3);
}
