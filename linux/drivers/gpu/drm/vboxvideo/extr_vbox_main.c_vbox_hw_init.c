
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vbva_modehint {int dummy; } ;
struct TYPE_2__ {int pdev; int dev; } ;
struct vbox_private {scalar_t__ guest_heap; TYPE_1__ ddev; int guest_pool; int last_mode_hints; int num_crtcs; int available_vram_size; int full_vram_size; int any_pitch; } ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int ) ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int GUEST_HEAP_OFFSET (struct vbox_private*) ;
 int GUEST_HEAP_SIZE ;
 int GUEST_HEAP_USABLE_SIZE ;
 int VBE_DISPI_ID_ANYX ;
 int VBE_DISPI_IOPORT_DATA ;
 int VBOX_MAX_SCREENS ;
 int VBOX_VBVA_CONF32_MONITOR_COUNT ;
 int clamp_t (int ,int ,int,int ) ;
 int devm_kcalloc (int ,int ,int,int ) ;
 int gen_pool_add_virt (int ,unsigned long,int ,int ,int) ;
 int gen_pool_create (int,int) ;
 int gen_pool_destroy (int ) ;
 int have_hgsmi_mode_hints (struct vbox_private*) ;
 int hgsmi_query_conf (int ,int ,int *) ;
 int hgsmi_test_query_conf (int ) ;
 int inl (int ) ;
 scalar_t__ pci_iomap_range (int ,int ,int ,int ) ;
 int pci_iounmap (int ,scalar_t__) ;
 int u32 ;
 int vbox_accel_init (struct vbox_private*) ;
 int vbox_check_supported (int ) ;

int vbox_hw_init(struct vbox_private *vbox)
{
 int ret = -ENOMEM;

 vbox->full_vram_size = inl(VBE_DISPI_IOPORT_DATA);
 vbox->any_pitch = vbox_check_supported(VBE_DISPI_ID_ANYX);

 DRM_INFO("VRAM %08x\n", vbox->full_vram_size);


 vbox->guest_heap =
     pci_iomap_range(vbox->ddev.pdev, 0, GUEST_HEAP_OFFSET(vbox),
       GUEST_HEAP_SIZE);
 if (!vbox->guest_heap)
  return -ENOMEM;


 vbox->guest_pool = gen_pool_create(4, -1);
 if (!vbox->guest_pool)
  goto err_unmap_guest_heap;

 ret = gen_pool_add_virt(vbox->guest_pool,
    (unsigned long)vbox->guest_heap,
    GUEST_HEAP_OFFSET(vbox),
    GUEST_HEAP_USABLE_SIZE, -1);
 if (ret)
  goto err_destroy_guest_pool;

 ret = hgsmi_test_query_conf(vbox->guest_pool);
 if (ret) {
  DRM_ERROR("vboxvideo: hgsmi_test_query_conf failed\n");
  goto err_destroy_guest_pool;
 }


 vbox->available_vram_size = GUEST_HEAP_OFFSET(vbox);

 hgsmi_query_conf(vbox->guest_pool, VBOX_VBVA_CONF32_MONITOR_COUNT,
    &vbox->num_crtcs);
 vbox->num_crtcs = clamp_t(u32, vbox->num_crtcs, 1, VBOX_MAX_SCREENS);

 if (!have_hgsmi_mode_hints(vbox)) {
  ret = -ENOTSUPP;
  goto err_destroy_guest_pool;
 }

 vbox->last_mode_hints = devm_kcalloc(vbox->ddev.dev, vbox->num_crtcs,
          sizeof(struct vbva_modehint),
          GFP_KERNEL);
 if (!vbox->last_mode_hints) {
  ret = -ENOMEM;
  goto err_destroy_guest_pool;
 }

 ret = vbox_accel_init(vbox);
 if (ret)
  goto err_destroy_guest_pool;

 return 0;

err_destroy_guest_pool:
 gen_pool_destroy(vbox->guest_pool);
err_unmap_guest_heap:
 pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
 return ret;
}
