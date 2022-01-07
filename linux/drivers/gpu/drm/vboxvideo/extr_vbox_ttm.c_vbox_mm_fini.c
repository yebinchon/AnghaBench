
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct vbox_private {TYPE_1__ ddev; int fb_mtrr; } ;


 int DRM_MTRR_WC ;
 int arch_phys_wc_del (int ) ;
 int drm_mtrr_del (int ,int ,int ,int ) ;
 int drm_vram_helper_release_mm (TYPE_1__*) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

void vbox_mm_fini(struct vbox_private *vbox)
{





 arch_phys_wc_del(vbox->fb_mtrr);

 drm_vram_helper_release_mm(&vbox->ddev);
}
