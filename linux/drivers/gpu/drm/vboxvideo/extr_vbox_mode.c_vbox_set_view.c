
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vbva_infoview {int view_index; scalar_t__ max_screen_size; scalar_t__ view_size; scalar_t__ view_offset; } ;
struct vbox_private {int guest_pool; scalar_t__ available_vram_size; } ;
struct vbox_crtc {int crtc_id; scalar_t__ fb_offset; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct vbox_private* dev_private; } ;


 int ENOMEM ;
 int HGSMI_CH_VBVA ;
 int VBVA_INFO_VIEW ;
 int VBVA_MIN_BUFFER_SIZE ;
 struct vbva_infoview* hgsmi_buffer_alloc (int ,int,int ,int ) ;
 int hgsmi_buffer_free (int ,struct vbva_infoview*) ;
 int hgsmi_buffer_submit (int ,struct vbva_infoview*) ;
 struct vbox_crtc* to_vbox_crtc (struct drm_crtc*) ;

__attribute__((used)) static int vbox_set_view(struct drm_crtc *crtc)
{
 struct vbox_crtc *vbox_crtc = to_vbox_crtc(crtc);
 struct vbox_private *vbox = crtc->dev->dev_private;
 struct vbva_infoview *p;
 p = hgsmi_buffer_alloc(vbox->guest_pool, sizeof(*p),
          HGSMI_CH_VBVA, VBVA_INFO_VIEW);
 if (!p)
  return -ENOMEM;

 p->view_index = vbox_crtc->crtc_id;
 p->view_offset = vbox_crtc->fb_offset;
 p->view_size = vbox->available_vram_size - vbox_crtc->fb_offset +
         vbox_crtc->crtc_id * VBVA_MIN_BUFFER_SIZE;
 p->max_screen_size = vbox->available_vram_size - vbox_crtc->fb_offset;

 hgsmi_buffer_submit(vbox->guest_pool, p);
 hgsmi_buffer_free(vbox->guest_pool, p);

 return 0;
}
