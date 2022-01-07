
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbox_private {int guest_pool; } ;


 int VBVACAPS_DISABLE_CURSOR_INTEGRATION ;
 int VBVACAPS_IRQ ;
 int VBVACAPS_USE_VBVA_ONLY ;
 int VBVACAPS_VIDEO_MODE_HINTS ;
 int hgsmi_send_caps_info (int ,int) ;

void vbox_report_caps(struct vbox_private *vbox)
{
 u32 caps = VBVACAPS_DISABLE_CURSOR_INTEGRATION |
     VBVACAPS_IRQ | VBVACAPS_USE_VBVA_ONLY;


 hgsmi_send_caps_info(vbox->guest_pool, caps);
 caps |= VBVACAPS_VIDEO_MODE_HINTS;
 hgsmi_send_caps_info(vbox->guest_pool, caps);
}
