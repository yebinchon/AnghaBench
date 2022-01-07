
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct nv04_mode_state {TYPE_1__* crtc_reg; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {struct nvif_object object; } ;
struct TYPE_7__ {TYPE_2__ device; } ;
struct TYPE_8__ {TYPE_3__ client; } ;
struct TYPE_5__ {int* DAC; } ;


 int NVSetEnablePalette (struct drm_device*,int,int) ;
 scalar_t__ NV_PRMDIO_PALETTE_DATA ;
 scalar_t__ NV_PRMDIO_PIXEL_MASK ;
 int NV_PRMDIO_PIXEL_MASK_MASK ;
 int NV_PRMDIO_SIZE ;
 scalar_t__ NV_PRMDIO_WRITE_MODE_ADDRESS ;
 TYPE_4__* nouveau_drm (struct drm_device*) ;
 int nvif_wr08 (struct nvif_object*,scalar_t__,int) ;

void
nouveau_hw_load_state_palette(struct drm_device *dev, int head,
         struct nv04_mode_state *state)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 int head_offset = head * NV_PRMDIO_SIZE, i;

 nvif_wr08(device, NV_PRMDIO_PIXEL_MASK + head_offset,
    NV_PRMDIO_PIXEL_MASK_MASK);
 nvif_wr08(device, NV_PRMDIO_WRITE_MODE_ADDRESS + head_offset, 0x0);

 for (i = 0; i < 768; i++) {
  nvif_wr08(device, NV_PRMDIO_PALETTE_DATA + head_offset,
    state->crtc_reg[head].DAC[i]);
 }

 NVSetEnablePalette(dev, head, 0);
}
