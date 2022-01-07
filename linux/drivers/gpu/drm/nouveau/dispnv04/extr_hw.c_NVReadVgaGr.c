
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVReadPRMVIO (struct drm_device*,int,int ) ;
 int NVWritePRMVIO (struct drm_device*,int,int ,int ) ;
 int NV_PRMVIO_GRX ;
 int NV_PRMVIO_GX ;

uint8_t
NVReadVgaGr(struct drm_device *dev, int head, uint8_t index)
{
 NVWritePRMVIO(dev, head, NV_PRMVIO_GRX, index);
 return NVReadPRMVIO(dev, head, NV_PRMVIO_GX);
}
