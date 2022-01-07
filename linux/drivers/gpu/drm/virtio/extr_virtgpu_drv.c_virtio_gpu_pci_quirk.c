
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unique ;
struct TYPE_2__ {int parent; } ;
struct virtio_device {TYPE_1__ dev; } ;
struct pci_dev {int class; int dev; } ;
struct drm_device {struct pci_dev* pdev; } ;


 int DRM_INFO (char*,char*,char const*) ;
 int PCI_CLASS_DISPLAY_VGA ;
 char* dev_name (int *) ;
 int drm_dev_set_unique (struct drm_device*,char*) ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int virtio_gpu_pci_quirk(struct drm_device *dev, struct virtio_device *vdev)
{
 struct pci_dev *pdev = to_pci_dev(vdev->dev.parent);
 const char *pname = dev_name(&pdev->dev);
 bool vga = (pdev->class >> 8) == PCI_CLASS_DISPLAY_VGA;
 char unique[20];

 DRM_INFO("pci: %s detected at %s\n",
   vga ? "virtio-vga" : "virtio-gpu-pci",
   pname);
 dev->pdev = pdev;
 if (vga)
  drm_fb_helper_remove_conflicting_pci_framebuffers(pdev,
          0,
          "virtiodrmfb");
 snprintf(unique, sizeof(unique), "pci:%s", pname);
 return drm_dev_set_unique(dev, unique);
}
