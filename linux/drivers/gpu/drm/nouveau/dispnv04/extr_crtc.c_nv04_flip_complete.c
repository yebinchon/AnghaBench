
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvif_notify {TYPE_1__* object; } ;
struct nv04_page_flip_state {int pitch; int bpp; TYPE_2__* crtc; scalar_t__ offset; } ;
struct nouveau_drm {int dev; struct nouveau_channel* channel; } ;
struct nouveau_cli {struct nouveau_drm* drm; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_3__ {scalar_t__ client; } ;


 int NVIF_NOTIFY_KEEP ;
 int drm_crtc_index (TYPE_2__*) ;
 int nv04_finish_page_flip (struct nouveau_channel*,struct nv04_page_flip_state*) ;
 int nv_set_crtc_base (int ,int ,scalar_t__) ;

int
nv04_flip_complete(struct nvif_notify *notify)
{
 struct nouveau_cli *cli = (void *)notify->object->client;
 struct nouveau_drm *drm = cli->drm;
 struct nouveau_channel *chan = drm->channel;
 struct nv04_page_flip_state state;

 if (!nv04_finish_page_flip(chan, &state)) {
  nv_set_crtc_base(drm->dev, drm_crtc_index(state.crtc),
     state.offset + state.crtc->y *
     state.pitch + state.crtc->x *
     state.bpp / 8);
 }

 return NVIF_NOTIFY_KEEP;
}
